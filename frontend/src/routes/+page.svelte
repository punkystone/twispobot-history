<script>
	import SaveIcon from '$lib/components/icons/SaveIcon.svelte';
	let loggedIn = $state(true);
</script>

<div class="header">
	<h1>TwiSpoBot History Settings</h1>
	<div class="actions">
		<button class="save"><SaveIcon /></button>
		{#if loggedIn}
			<button class="twitch-logout-button">Logout</button>
		{:else}
			<button class="twitch-login-button">Login</button>
		{/if}
	</div>
</div>
<hr />
<div class="settings-container">
	<label class="checkmark-container"
		>Enabled
		<input type="checkbox" checked={false} />
		<span class="checkmark"></span>
	</label>
</div>
<hr />
<div class="settings-container">
	<span class="settings-header">Message Format</span>
	<input type="text" />
</div>

<style>
	.header {
		display: flex;
		align-items: center;
	}
	.header > h1 {
		margin-right: auto;
	}
	.settings-container {
		display: flex;
		flex-direction: column;
		gap: 1rem;
		margin-left: 20px;
		padding: 10px;
	}
	.settings-container input {
		width: 50%;
	}

	.twitch-login-button {
		color: #fff;
		background-color: #8e45f7;
	}
	.twitch-login-button:hover {
		background-color: #6b29d8;
	}

	.twitch-logout-button {
		color: #fa4d56;
		background-color: transparent;
		border: 1px solid #fa4d56;
	}
	.twitch-logout-button:hover {
		background-color: #cc0000;
		border-color: #cc0000;
		color: #fff;
	}

	.save {
		color: #fff;
		background-color: #28a745;
		border: none;
	}
	.save:hover {
		background-color: #218838;
	}
	.actions {
		display: flex;
		gap: 1rem;
	}
	.settings-header {
		font-size: 1.2rem;
	}
</style>
