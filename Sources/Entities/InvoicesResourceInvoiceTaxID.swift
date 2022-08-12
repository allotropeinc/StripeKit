// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InvoicesResourceInvoiceTaxID: Codable {
    /// The type of the tax ID, one of `eu_vat`, `br_cnpj`, `br_cpf`, `eu_oss_vat`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `li_uid`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, or `unknown`
    public var type: `Type`
    /// The value of the tax ID.
    public var value: String?

    /// The type of the tax ID, one of `eu_vat`, `br_cnpj`, `br_cpf`, `eu_oss_vat`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `li_uid`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, or `unknown`
    public enum `Type`: String, Codable, CaseIterable {
        case aeTrn = "ae_trn"
        case auAbn = "au_abn"
        case auArn = "au_arn"
        case bgUic = "bg_uic"
        case brCnpj = "br_cnpj"
        case brCpf = "br_cpf"
        case caBn = "ca_bn"
        case caGstHst = "ca_gst_hst"
        case caPstBc = "ca_pst_bc"
        case caPstMb = "ca_pst_mb"
        case caPstSk = "ca_pst_sk"
        case caQst = "ca_qst"
        case chVat = "ch_vat"
        case clTin = "cl_tin"
        case esCif = "es_cif"
        case euOssVat = "eu_oss_vat"
        case euVat = "eu_vat"
        case gbVat = "gb_vat"
        case geVat = "ge_vat"
        case hkBr = "hk_br"
        case huTin = "hu_tin"
        case idNpwp = "id_npwp"
        case ilVat = "il_vat"
        case inGst = "in_gst"
        case isVat = "is_vat"
        case jpCn = "jp_cn"
        case jpRn = "jp_rn"
        case krBrn = "kr_brn"
        case liUid = "li_uid"
        case mxRfc = "mx_rfc"
        case myFrp = "my_frp"
        case myItn = "my_itn"
        case mySst = "my_sst"
        case noVat = "no_vat"
        case nzGst = "nz_gst"
        case ruInn = "ru_inn"
        case ruKpp = "ru_kpp"
        case saVat = "sa_vat"
        case sgGst = "sg_gst"
        case sgUen = "sg_uen"
        case siTin = "si_tin"
        case thVat = "th_vat"
        case twVat = "tw_vat"
        case uaVat = "ua_vat"
        case unknown
        case usEin = "us_ein"
        case zaVat = "za_vat"
    }

    public init(type: `Type`, value: String? = nil) {
        self.type = type
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.value = try values.decodeIfPresent(String.self, forKey: "value")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(value, forKey: "value")
    }
}
