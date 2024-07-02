using {com.plain} from '../schemas/plain';

// provide 'category' column for sqlite so native query execution is possible
extend plain.Regions with {
    Category : String(5);
}
