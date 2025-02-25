<?php

namespace Botble\RealEstate\Exports;

use Botble\RealEstate\Models\Property;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class PropertiesExport implements FromCollection, WithHeadings, WithMapping
{
    use Exportable;

    public function collection()
    {
        return Property::query()
            ->with([
                'project',
                'categories',
                'features',
                'facilities',
                'customFields',
            ])
            ->get();
    }

    public function headings(): array
    {
        return apply_filters('real_estate_properties_export_headings', [
            'ID',
            'Name',
            'Type',
            'Description',
            'Content',
            'Location',
            'Images',
            'Project',
            'Number bedroom',
            'Number bathroom',
            'Number floor',
            'Square',
            'Price',
            'Currency',
            'Is Featured?',
            'City',
            'Country',
            'State',
            'Period',
            'Author ID',
            'Author Type',
            'Auto renew',
            'Never Expired',
            'Latitude',
            'Longitude',
            'Views',
            'Status',
            'Moderation status',
            'Categories',
            'Features',
            'Facilities',
            'Custom Fields',
        ]);
    }

    public function map($row): array
    {
        $facilities = $row->facilities->pluck('pivot.distance', 'name')->all();
        array_walk(
            $facilities,
            function (&$v, $k): void {
                $v = $k . ':' . $v;
            }
        );

        return apply_filters('real_estate_properties_export_row_data', [
            $row->id,
            $row->name,
            $row->type,
            $row->description,
            $row->content,
            $row->location,
            is_array($row->images) ? implode(',', $row->images) : [],
            $row->project_id,
            $row->number_bedroom,
            $row->number_bathroom,
            $row->number_floor,
            $row->square,
            $row->price,
            $row->currency_id,
            $row->is_featured,
            $row->city_id,
            $row->country_id,
            $row->state_id,
            $row->period,
            $row->author_id,
            $row->author_type,
            $row->auto_renew,
            $row->never_expired,
            $row->latitude,
            $row->longitude,
            $row->views,
            $row->status,
            $row->moderation_status,
            implode(',', $row->categories->pluck('name')->all()),
            implode(',', $row->features->pluck('name')->all()),
            implode(',', $facilities),
            implode(',', $row->customFields->pluck('id')->all()),
        ], $row);
    }
}
