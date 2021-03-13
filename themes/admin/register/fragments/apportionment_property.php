<table  class="table table-hover text-nowrap">
    <thead>
    <tr>
        <th>Imóvel</th>
        <th>Porcentagem</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach($apportionments as $apportionment):
                $percent="";

                if (!empty($apportionment->city_hall_cod)):
                    $percent = $apportionment->city_hall_percent;
                endif;
                if (!empty($apportionment->light_cod)):
                    $percent = $apportionment->light_percent;
                endif;
                if (!empty($apportionment->water_and_sewage_cod)):
                    $percent = $apportionment->water_and_sewage_percent;
                endif;
                if (!empty($apportionment->fire_department_cod)):
                    $percent = $apportionment->fire_department_percent;
                endif;
                if (!empty($apportionment->gas_cod)):
                    $percent = $apportionment->gas_percent;
                endif;
    ?>
        <tr>
            <td><?=$apportionment->apportionmentProperty()->street." ".$apportionment->apportionmentProperty()->number." ".$apportionment->apportionmentProperty()->complement.", ".$apportionment->apportionmentProperty()->district." - ".$apportionment->apportionmentProperty()->state." - ".$apportionment->apportionmentProperty()->city;?></td>
            <td><?=str_price($percent)?>%</td>
        </tr>
    <?php endforeach;?>
    </tbody>
</table>