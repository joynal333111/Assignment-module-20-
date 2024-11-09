@extends('layout')

@section('content')
<h1>Create New Product</h1>
<form method="POST" action="{{ route('products.store') }}" enctype="multipart/form-data">
    @csrf

    <!-- Product ID -->
    <div class="mb-3">
        <label for="product_id" class="form-label">Product ID</label>
        <input type="text" class="form-control" id="product_id" name="product_id" required>
    </div>

    <!-- Name -->
    <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>

    <!-- Description -->
    <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea class="form-control" id="description" name="description"></textarea>
    </div>

    <!-- Price -->
    <div class="mb-3">
        <label for="price" class="form-label">Price</label>
        <input type="number" class="form-control" id="price" name="price" step="0.01" required>
    </div>

    <!-- Stock -->
    <div class="mb-3">
        <label for="stock" class="form-label">Stock</label>
        <input type="number" class="form-control" id="stock" name="stock">
    </div>

    <!-- Image -->
    <div class="mb-3">
        <label for="image" class="form-label">Image</label>
        <input type="file" class="form-control" id="image" name="image">
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-success">Save Product</button>
</form>
@endsection
