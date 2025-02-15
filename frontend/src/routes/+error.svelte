<script lang="ts">
  import notFound from "$lib/images/404.webp";
</script>

<div class="wrapper">
  <img src={notFound} alt="Not Found" width="200" height="200" />
</div>

<style>
  .wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
</style>
