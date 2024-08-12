using {ExtAPI} from './external/ExtAPI';

service InvoiceService {

    @readonly
    entity Invoices as projection on ExtAPI.Invoices;

}
