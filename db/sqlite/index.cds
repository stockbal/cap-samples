using {Regions} from '../schemas/plain';

// provide 'category' column for sqlite so native query execution is possible
extend Regions with {
    Category : String(5);
}
