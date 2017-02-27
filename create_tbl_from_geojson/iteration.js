var length = cities.features.length;

$('#length_table').html('There are ' + length + ' cities in the table.');

var europe_count = 0;
var asia_count = 0;
var amer_n_count = 0;
var amer_s_count = 0;
var aus_count = 0;
var afr_count = 0;



for (var i = 0; i < cities.features.length; i++) {

	var continent = '';
	if (cities.features[i].properties.FIRST_CONT == 'Europe'){
		continent = '<span class="fa fa-star"> </span>';
		europe_count += 1;
	} else if (cities.features[i].properties.FIRST_CONT == 'Asia'){
		asia_count += 1;
	} else if (cities.features[i].properties.FIRST_CONT == 'North America'){
		amer_n_count += 1;
	} else if (cities.features[i].properties.FIRST_CONT == 'South America'){
		amer_s_count += 1;
	} else if (cities.features[i].properties.FIRST_CONT == 'Australia'){
		aus_count += 1;
	} else if (cities.features[i].properties.FIRST_CONT == 'Africa'){
		afr_count += 1;
	}

	$('#table_id').append('<tr>' + "<td class='FID_blue'>" + cities.features[i].properties.FID_1 + '</td>' +
									"<td class='name'>" + cities.features[i].properties.NAME + continent + '</td>' +
									'<td>' + cities.features[i].properties.CNTRY_NAME + '</td>' +
									'<td>' + cities.features[i].properties.POPULATION + '</td></tr>');

		}

$('#count_eur').html(europe_count);
$('#count_asia').html(asia_count);
$('#count_amer_n').html(amer_n_count);
$('#count_amer_s').html(amer_s_count);
$('#count_aus').html(aus_count);
$('#count_afr').html(afr_count);
