<?php
use System\Libraries\Session;
use App\Libraries\Fastlang as Flang;
?>
<div class="container mx-auto p-4">
    <?php if (Session::has_flash('success')): ?>
        <div class="bg-green-100 text-green-800 px-4 py-2 rounded mb-4">
            <?= Session::flash('success'); ?>
        </div>
    <?php endif; ?>
    <?php if (Session::has_flash('error')): ?>
        <div class="bg-red-200 text-red-800 p-4 mb-4 rounded">
            <?= Session::flash('error'); ?>
        </div>
    <?php endif; ?>
    
    <!-- Form to Add New Language -->
    <div class="mb-6">
        <h2 class="text-xl font-semibold mb-2">Add New Language</h2>
        <!-- Button to Show Form -->
        <button id="toggle-button" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" onclick="showForm()">Add Language</button>
        <form action="<?= admin_url('languages/add') ?>" method="POST" class="space-y-4" id="language-form" style="display: <?= !empty($_GET['action']) && $_GET['action'] == 'add' ? 'block':'none'; ?>;">
            <input type="hidden" name="csrf_token" value="<?= $csrf_token; ?>">  
            <div>
                <label for="name" class="block text-sm font-medium text-gray-700">Language Name</label>
                <input type="text" name="name" id="name" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                <?php if (!empty($errors['name'])): ?>
                    <div class="text-red-500 mt-2 text-sm">
                        <?php foreach ($errors['name'] as $error): ?>
                            <p><?= $error; ?></p>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            </div>
            <div>
                <label for="code" class="block text-sm font-medium text-gray-700">Language Code</label>
                <input type="text" name="code" id="code" maxlength="2" required class="mt-1 p-2 border border-gray-300 rounded w-full">
                <?php if (!empty($errors['code'])): ?>
                    <div class="text-red-500 mt-2 text-sm">
                        <?php foreach ($errors['code'] as $error): ?>
                            <p><?= $error; ?></p>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            </div>
            <div>
                <label for="is_default" class="block text-sm font-medium text-gray-700">Default</label>
                <select name="is_default" id="is_default" class="mt-1 p-2 border border-gray-300 rounded w-full">
                    <option value="0">No</option>
                    <option value="1">Yes</option>
                </select>
                <?php if (!empty($errors['is_default'])): ?>
                    <div class="text-red-500 mt-2 text-sm">
                        <?php foreach ($errors['is_default'] as $error): ?>
                            <p><?= $error; ?></p>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            </div>
            <div>
                <label for="status" class="block text-sm font-medium text-gray-700">Status</label>
                <select name="status" id="status" class="mt-1 p-2 border border-gray-300 rounded w-full">
                    <option value="active">Active</option>
                    <option value="inactive">Inactive</option>
                </select>
                <?php if (!empty($errors['status'])): ?>
                    <div class="text-red-500 mt-2 text-sm">
                        <?php foreach ($errors['status'] as $error): ?>
                            <p><?= $error; ?></p>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            </div>
            <div>
                <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">Add Language</button>
            </div>
        </form>
    </div>

    <div class="overflow-x-auto">        
        <table class="min-w-full bg-white rounded-lg shadow-md">
            <thead>
                <tr class="bg-gray-100">
                    <th class="px-4 py-2 text-left">ID</th>
                    <th class="px-4 py-2 text-left">Name</th>
                    <th class="px-4 py-2 text-left">Code</th>
                    <th class="px-4 py-2 text-left">Status</th>
                    <th class="px-4 py-2 text-left">Default</th>
                    <th class="px-4 py-2 text-left">Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($languages as $language): ?>
                    <tr class="border-b">
                        <td class="px-4 py-2"><?= $language['id']; ?></td>
                        <td class="px-4 py-2"><?= $language['name']; ?></td>
                        <td class="px-4 py-2"><?= $language['code']; ?></td>
                        <td class="px-4 py-2">
                            <?php if($language['status'] == 'active'): ?>
                            <div class="switch-container w-[66px]">
                                <label class="autoSaverSwitch relative inline-flex cursor-pointer select-none items-center">
                                <input type="checkbox" class="sr-only toggle-checkbox" checked>
                                <span class="slider mr-3 flex h-[26px] w-[50px] items-center rounded-full bg-blue-600  p-1 duration-200" onclick="changeStatus('<?= admin_url('languages/changestatus/' . $language['id']); ?>')" >
                                    <span class="dot h-[18px] w-[18px] rounded-full bg-white duration-300 transform translate-x-6"></span>
                                </span>
                                </label>
                            </div>
                            <?php else: ?>
                            <div class="switch-container w-[66px]">
                                <label class="autoSaverSwitch relative inline-flex cursor-pointer select-none items-center">
                                <input type="checkbox" class="sr-only toggle-checkbox" checked>
                                <span class="slider mr-3 flex h-[26px] w-[50px] items-center rounded-full bg-gray-200  p-1 duration-200" onclick="changeStatus('<?= admin_url('languages/changestatus/' . $language['id']); ?>')">
                                    <span class="dot h-[18px] w-[18px] rounded-full bg-white duration-300 transform"></span>
                                </span>
                                </label>
                            </div>
                            <?php endif; ?>
                        </td>
                        <td class="px-4 py-2">
                            <input 
                                name="<?= $language['is_default'] ?>" 
                                type="checkbox" 
                                <?= $language['is_default'] == 1 ? 'checked disabled' : ''; ?> 
                                onclick="setDefaultLanguage('<?= admin_url('languages/setdefault/' . $language['id']); ?>')"
                            >
                        </td>                     
                        <td class="px-4 py-2">
                            <a href="<?= admin_url('languages/edit/' . $language['id']); ?>" class="text-blue-600 hover:underline">Edit</a> |
                            <a href="<?= admin_url('languages/delete/' . $language['id']); ?>" class="text-red-600 hover:underline" onclick="return confirm('Are you sure you want to delete?');">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
