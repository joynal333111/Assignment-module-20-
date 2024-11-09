@extends('layout')

@section('content')
<h1>Edit Product</h1>
<form method="POST" action="{{ route('products.update', $product->id) }}" enctype="multipart/form-data">
    @csrf
    @method('PUT') <!-- Spoof the PUT method for updating resources -->

    <!-- Product ID -->
    <div class="mb-3">
        <label for="product_id" class="form-label">Product ID</label>
        <input type="text" class="form-control" id="product_id" name="product_id" value="{{ $product->product_id }}" required>
    </div>

    <!-- Name -->
    <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name" value="{{ $product->name }}" required>
    </div>

    <!-- Description -->
    <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea class="form-control" id="description" name="description">{{ $product->description }}</textarea>
    </div>

    <!-- Price -->
    <div class="mb-3">
        <label for="price" class="form-label">Price</label>
        <input type="number" class="form-control" id="price" name="price" value="{{ $product->price }}" step="0.01" required>
    </div>

    <!-- Stock -->
    <div class="mb-3">
        <label for="stock" class="form-label">Stock</label>
        <input type="number" class="form-control" id="stock" name="stock" value="{{ $product->stock }}">
    </div>

    <!-- Image -->
    <div class="mb-3">
        <label for="image" class="form-label">Image</label>
        <input type="file" class="form-control" id="image" name="image">
        @if($product->image)
            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" class="img-thumbnail mt-2" style="max-width: 200px;">
        @endif
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-warning">Update Product</button>
</form>
@endsection
