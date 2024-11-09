<?php

namespace App\Http\Controllers;

use App\Models\Product; // Import the Product model
use Illuminate\Http\Request;

class ProductController extends Controller {
    /**
     * Display a listing of the products with pagination, search, and sorting.
     */
    public function index( Request $request ) {
        $query = Product::query();

        // Search functionality
        if ( $request->search ) {
            $query->where( 'product_id', 'like', '%' . $request->search . '%' )
                ->orWhere( 'name', 'like', '%' . $request->search . '%' )
                ->orWhere( 'description', 'like', '%' . $request->search . '%' );
        }

        if ( $request->has( 'sort_name' ) ) {
            $query->orderBy( 'name', $request->get( 'sort_name' ) );
        }

        if ( $request->has( 'sort_price' ) ) {
            $query->orderBy( 'price', $request->get( 'sort_price' ) );
        }

        $products = $query->paginate( 4 ); // Paginate results, 10 per page
        return view( 'index', compact( 'products' ) ); // Pass products to the view
    }

    /**
     * Show the form to create a new product.
     */
    public function create() {
        return view( 'create' ); // Load the create form
    }

    /**
     * Store a newly created product in the database.
     */
    public function store( Request $request ) {
        $request->validate( [
            'product_id' => 'required|unique:products', // Product ID must be unique
            'name' => 'required', // Name is required
            'price' => 'required|numeric', // Price is required and must be numeric
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ] );

        $data = $request->all(); // Get all input data

        // Handle image upload
        if ( $request->hasFile( 'image' ) ) {
            $data['image'] = $request->file( 'image' )->store( 'products', 'public' );
        }

        Product::create( $data ); // Save the product to the database

        return redirect()->route( 'products.index' )->with( 'success', 'Product created successfully!' );
    }

    /**
     * Display a specific product's details.
     */
    public function show( $id ) {
        $product = Product::findOrFail( $id ); // Fetch product by ID or fail
        return view( 'show', compact( 'product' ) ); // Pass product to the view
    }

    /**
     * Show the form to edit a specific product.
     */
    public function edit( $id ) {
        $product = Product::findOrFail( $id ); // Fetch product by ID or fail
        return view( 'edit', compact( 'product' ) ); // Pass product to the edit view
    }

    /**
     * Update a specific product in the database.
     */
    public function update( Request $request, $id ) {
        $product = Product::findOrFail( $id ); // Fetch product by ID or fail

        $request->validate( [
            'product_id' => 'required|unique:products,product_id,' . $product->id, // Validate unique product ID
            'name' => 'required', // Name is required
            'price' => 'required|numeric', // Price must be numeric
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ] );

        $data = $request->all(); // Get all input data

        // Handle image upload
        if ( $request->hasFile( 'image' ) ) {
            $data['image'] = $request->file( 'image' )->store( 'products', 'public' );
        }

        $product->update( $data ); // Update product details

        return redirect()->route( 'products.index' )->with( 'success', 'Product updated successfully!' );
    }

    /**
     * Delete a specific product from the database.
     */
    public function destroy( $id ) {
        Product::findOrFail( $id )->delete(); // Delete the product
        return redirect()->route( 'products.index' )->with( 'success', 'Product deleted successfully!' );
    }
}
