using {com.plain} from '../schemas/plain';
using {com.foreign} from '../schemas/foreign';

annotate plain.Regions with @cds.persistence.exists;
annotate plain.MaterialTexts with @cds.persistence.exists;

annotate foreign.CurrenciesView with @cds.persistence.exists;
annotate foreign.Countries with @cds.persistence.exists;
