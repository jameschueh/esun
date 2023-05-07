<template>
  <div>
    <h1>esun</h1>
    <button @click="query">查詢</button>
    <table>
      <thead>
        <tr>
          <th>商品編號</th>
          <th>商品名稱</th>
          <th>售價</th>
          <th>庫存</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="product in products" :key="product.ProductID">
          <td>{{ product.ProductID }}</td>
          <td>{{ product.ProductName }}</td>
          <td>{{ product.Price }}</td>
          <td>{{ product.Quantity }}</td>
        </tr>
        <tr v-if="products.length === 0">
          <td colspan="4">0 results</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      products: [],
    };
  },
  methods: {
    query() {
      axios
        .get("query.php")
        .then((response) => {
          this.products = response.data;
        })
        .catch((error) => {
          console.error(error);
        });
    },
  },
};
</script>

<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }
  th,
  td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  tr:hover {
    background-color: #f5f5f5;
  }
  button {
    padding: 8px 16px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    cursor: pointer;
  }
</style>