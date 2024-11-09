@extends('layout')

@section('content')
    <h1>Products</h1>

    <form class="mb-3" method="GET" action="{{ route('products.index') }}">
        <div class="input-group">
            <input type="text" class="form-control" name="search" placeholder="Search by Product ID, Name, or Description"
                value="{{ request('search') }}">
            <button class="btn btn-primary">Search</button>
        </div>
    </form>
    <a href="{{ route('products.create') }}" class="btn btn-success mb-3">Add New Product</a>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>
                    <a href="{{ route('products.index', ['sort_name' => request('sort_name') === 'asc' ? 'desc' : 'asc']) }}">
                        Name↑↓

                    </a>
                </th>
                <th>
                    <a href="{{ route('products.index', ['sort_price' => request('sort_price') === 'asc' ? 'desc' : 'asc']) }}">
                        Price↑↓

                    </a>
                </th>
                <th>Actions</th>
            </tr>
        </thead>


        <tbody>
            @forelse($products as $product)
                <tr>
                    <td>{{ $product->name }}</td>
                    <td>${{ $product->price }}</td>
                    <td>
                        <a href="{{ route('products.show', $product->id) }}" class="btn btn-info btn-sm">View</a>
                        <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;" onsubmit="return confirmDelete()">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>

                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="3">No products found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
    {{ $products->links('pagination::bootstrap-5') }}
@endsection

@section('scripts')
<script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this product? This action cannot be undone.");
    }
</script>
