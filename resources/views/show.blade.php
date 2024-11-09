@extends('layout')

@section('content')
    <h1>Product Details</h1>

    <div class="card">
        <!-- Card Header -->
        <div class="card-header">
            <h2>{{ $product->name }}</h2>
        </div>

        <!-- Card Body -->
        <div class="card-body">
            <p><strong>Product ID:</strong> {{ $product->product_id }}</p>
            <p><strong>Description:</strong> {{ $product->description }}</p>
            <p><strong>Price:</strong> ${{ $product->price }}</p>
            <p><strong>Stock:</strong> {{ $product->stock }}</p>

            <!-- Image Section -->
            @if ($product->image)
                <div>
                    <!-- Dynamically display the product image -->
                    <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" class="img-fluid"
                        style="max-width: 300px; height: auto;">

                </div>
            @else
                <p><strong>Image:</strong> No image available.</p>
            @endif
        </div>

        <!-- Card Footer -->
        <div class="card-footer">
            <a href="{{ route('products.index') }}" class="btn btn-secondary">Back to Products</a>
        </div>
    </div>
@endsection
