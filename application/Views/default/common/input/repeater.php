<?php use System\Libraries\Render; 
?> 
<div class="field px-1 w-full mb-4 wrap-<?= htmlspecialchars($name) ?>"  
     style="<?= $visibility ? 'width:' . htmlspecialchars($width_value) . htmlspecialchars($width_unit) . ';' : 'display:none;' ?>"> 
    
    <?php if ($label): ?> 
        <label class="block mb-2 font-medium text-sm leading-5 text-gray-900"> 
            <?= htmlspecialchars($label) ?><?= $required ? '<span class="text-red-500">*</span>' : '' ?> 
        </label> 
    <?php endif; ?> 

    <div id="<?= htmlspecialchars($name) ?>" data-level="<?= $level ?>" class="repeater bg-white rounded-lg shadow-sm border border-gray-200 p-4"> 
        <?php 
        $repeater_values = is_string($value) ? json_decode($value, true) : $value; 
        $repeater_values = is_array($repeater_values) ? $repeater_values : []; 
        if (empty($repeater_values)) { 
            $repeater_values[] = []; 
        } 
        foreach ($repeater_values as $index => $repeater_value): 
        ?> 
            <div data-order="<?= $index ?>" class="repeater-item bg-gray-50 rounded-md p-4 mb-3 relative border border-gray-100 hover:border-gray-300 transition-all"> 
                <div class="grid grid-cols-<?= (count($fields) < 7) ? count($fields) : 6 ?> gap-4">
                    <?php  
                    foreach ($fields as $sub_field): 
                        
                        if (!isset($sub_field['field_name']) && isset($sub_field['name'])) {
                            $sub_field['field_name'] = $sub_field['name'];
                        }
                        $sub_field_name = $sub_field['field_name']; 
                        $sub_field_value = $repeater_value[$sub_field_name] ?? null; 
                        $sub_error_message = $error_message[$index][$sub_field_name] ?? null; 
                        $sub_field['data_name'] = $sub_field_name; 
                        $sub_field['level'] = ($level ?? 1) + 1;
                    ?> 
                        <div class="repeater-input-wrap"> 
                            <?= Render::input($sub_field, $sub_field_value, $sub_error_message) ?> 
                        </div> 
                    <?php endforeach; ?> 
                </div>

                <button type="button"  
                        data-id="<?= htmlspecialchars($name) ?>"  
                        order="<?= $index ?>"  
                        class="repeater-remove inline-flex items-center py-2 px-4 bg-red-700 text-white text-sm font-medium rounded hover:bg-red-100 transition-colors">
                    <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"/>
                    </svg>
                </button> 
            </div> 
        <?php endforeach; ?> 
        
        <button type="button"  
                data-add="<?= htmlspecialchars($name) ?>"  
                data-level="1"
                class="inline-flex items-center px-4 py-2 bg-blue-50 text-blue-700 text-sm font-medium rounded-md hover:bg-blue-100 transition-colors mt-2">
            <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"/>
            </svg>
            Add
        </button> 
    </div> 

    <?php if ($description): ?> 
        <p class="text-gray-500 text-sm mt-1"><?= htmlspecialchars($description) ?></p> 
    <?php endif; ?> 
</div> 
<?php if($level == 1): ?> 
<script> 
    document.addEventListener("DOMContentLoaded", function() { 
        const fieldId = "<?= $name ?>";  
        initRepeaterField(fieldId); 
    }); 
</script>
<?php endif; ?>