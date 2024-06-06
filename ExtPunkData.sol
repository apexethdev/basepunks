// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
pragma abicoder v2;
// import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./Extra/StringUtils.sol";

contract ExtPunksData {
    using StringUtils for string;
    using Strings for uint16;
    using Strings for uint8;
    using Strings for uint256;
    
    
    enum PunkAttributeType {SEX, HAIR, EYES, BEARD, EARS, LIPS, MOUTH,
            FACE, EMOTION, NECK, NOSE, CHEEKS, TEETH}
    
    enum PunkAttributeValue {NONE, ALIEN, APE, BANDANA, BEANIE, BIG_BEARD, BIG_SHADES, 
            BLACK_LIPSTICK, BLONDE_BOB, BLONDE_SHORT, BLUE_EYE_SHADOW, 
            BUCK_TEETH, CAP, CAP_FORWARD, CHINSTRAP, CHOKER, CIGARETTE, 
            CLASSIC_SHADES, CLOWN_EYES_BLUE, CLOWN_EYES_GREEN, CLOWN_HAIR_GREEN, 
            CLOWN_NOSE, COWBOY_HAT, CRAZY_HAIR, DARK_HAIR, DO_RAG, EARRING, EYE_MASK, 
            EYE_PATCH, FEDORA, FEMALE, FRONT_BEARD, FRONT_BEARD_DARK, FROWN, FRUMPY_HAIR, 
            GOAT, GOLD_CHAIN, GREEN_EYE_SHADOW, HALF_SHAVED, HANDLEBARS, HEADBAND, HOODIE, 
            HORNED_RIM_GLASSES, HOT_LIPSTICK, KNITTED_CAP, LUXURIOUS_BEARD, MALE, MEDICAL_MASK, 
            MESSY_HAIR, MOHAWK, MOHAWK_DARK, MOHAWK_THIN, MOLE, MUSTACHE, MUTTONCHOPS, NERD_GLASSES, 
            NORMAL_BEARD, NORMAL_BEARD_BLACK, ORANGE_SIDE, PEAK_SPIKE, PIGTAILS, PILOT_HELMET, 
            PINK_WITH_HAT, PIPE, POLICE_CAP, PURPLE_EYE_SHADOW, PURPLE_HAIR, PURPLE_LIPSTICK, 
            RED_MOHAWK, REGULAR_SHADES, ROSY_CHEEKS, SHADOW_BEARD, SHAVED_HEAD, SILVER_CHAIN, 
            SMALL_SHADES, SMILE, SPOTS, STRAIGHT_HAIR, STRAIGHT_HAIR_BLONDE, STRAIGHT_HAIR_DARK, 
            STRINGY_HAIR, TASSLE_HAT, THREE_D_GLASSES, TIARA, TOP_HAT, VAMPIRE_HAIR, VAPE, VR, 
            WELDING_GOGGLES, WILD_BLONDE, WILD_HAIR, WILD_WHITE_HAIR, ZOMBIE}
    
    uint8[][] public local_attrValuesAndTypes;

    constructor() {

        setAttrStringToEnumMapping("3D Glasses", PunkAttributeValue(82));
        setAttrStringToEnumMapping("Alien", PunkAttributeValue(1));
        setAttrStringToEnumMapping("Ape", PunkAttributeValue(2));
        setAttrStringToEnumMapping("Bandana", PunkAttributeValue(3));
        setAttrStringToEnumMapping("Beanie", PunkAttributeValue(4));
        setAttrStringToEnumMapping("Big Beard", PunkAttributeValue(5));
        setAttrStringToEnumMapping("Big Shades", PunkAttributeValue(6));
        setAttrStringToEnumMapping("Black Lipstick", PunkAttributeValue(7));
        setAttrStringToEnumMapping("Blonde Bob", PunkAttributeValue(8));
        setAttrStringToEnumMapping("Blonde Short", PunkAttributeValue(9));
        setAttrStringToEnumMapping("Blue Eye Shadow", PunkAttributeValue(10));
        setAttrStringToEnumMapping("Buck Teeth", PunkAttributeValue(11));
        setAttrStringToEnumMapping("Cap", PunkAttributeValue(12));
        setAttrStringToEnumMapping("Cap Forward", PunkAttributeValue(13));
        setAttrStringToEnumMapping("Chinstrap", PunkAttributeValue(14));
        setAttrStringToEnumMapping("Choker", PunkAttributeValue(15));
        setAttrStringToEnumMapping("Cigarette", PunkAttributeValue(16));
        setAttrStringToEnumMapping("Classic Shades", PunkAttributeValue(17));
        setAttrStringToEnumMapping("Clown Eyes Blue", PunkAttributeValue(18));
        setAttrStringToEnumMapping("Clown Eyes Green", PunkAttributeValue(19));
        setAttrStringToEnumMapping("Clown Hair Green", PunkAttributeValue(20));
        setAttrStringToEnumMapping("Clown Nose", PunkAttributeValue(21));
        setAttrStringToEnumMapping("Cowboy Hat", PunkAttributeValue(22));
        setAttrStringToEnumMapping("Crazy Hair", PunkAttributeValue(23));
        setAttrStringToEnumMapping("Dark Hair", PunkAttributeValue(24));
        setAttrStringToEnumMapping("Do-rag", PunkAttributeValue(25));
        setAttrStringToEnumMapping("Earring", PunkAttributeValue(26));
        setAttrStringToEnumMapping("Eye Mask", PunkAttributeValue(27));
        setAttrStringToEnumMapping("Eye Patch", PunkAttributeValue(28));
        setAttrStringToEnumMapping("Fedora", PunkAttributeValue(29));
        setAttrStringToEnumMapping("Female", PunkAttributeValue(30));
        setAttrStringToEnumMapping("Front Beard", PunkAttributeValue(31));
        setAttrStringToEnumMapping("Front Beard Dark", PunkAttributeValue(32));
        setAttrStringToEnumMapping("Frown", PunkAttributeValue(33));
        setAttrStringToEnumMapping("Frumpy Hair", PunkAttributeValue(34));
        setAttrStringToEnumMapping("Goat", PunkAttributeValue(35));
        setAttrStringToEnumMapping("Gold Chain", PunkAttributeValue(36));
        setAttrStringToEnumMapping("Green Eye Shadow", PunkAttributeValue(37));
        setAttrStringToEnumMapping("Half Shaved", PunkAttributeValue(38));
        setAttrStringToEnumMapping("Handlebars", PunkAttributeValue(39));
        setAttrStringToEnumMapping("Headband", PunkAttributeValue(40));
        setAttrStringToEnumMapping("Hoodie", PunkAttributeValue(41));
        setAttrStringToEnumMapping("Horned Rim Glasses", PunkAttributeValue(42));
        setAttrStringToEnumMapping("Hot Lipstick", PunkAttributeValue(43));
        setAttrStringToEnumMapping("Knitted Cap", PunkAttributeValue(44));
        setAttrStringToEnumMapping("Luxurious Beard", PunkAttributeValue(45));
        setAttrStringToEnumMapping("Male", PunkAttributeValue(46));
        setAttrStringToEnumMapping("Medical Mask", PunkAttributeValue(47));
        setAttrStringToEnumMapping("Messy Hair", PunkAttributeValue(48));
        setAttrStringToEnumMapping("Mohawk", PunkAttributeValue(49));
        setAttrStringToEnumMapping("Mohawk Dark", PunkAttributeValue(50));
        setAttrStringToEnumMapping("Mohawk Thin", PunkAttributeValue(51));
        setAttrStringToEnumMapping("Mole", PunkAttributeValue(52));
        setAttrStringToEnumMapping("Mustache", PunkAttributeValue(53));
        setAttrStringToEnumMapping("Muttonchops", PunkAttributeValue(54));
        setAttrStringToEnumMapping("Nerd Glasses", PunkAttributeValue(55));
        setAttrStringToEnumMapping("Normal Beard", PunkAttributeValue(56));
        setAttrStringToEnumMapping("Normal Beard Black", PunkAttributeValue(57));
        setAttrStringToEnumMapping("Orange Side", PunkAttributeValue(58));
        setAttrStringToEnumMapping("Peak Spike", PunkAttributeValue(59));
        setAttrStringToEnumMapping("Pigtails", PunkAttributeValue(60));
        setAttrStringToEnumMapping("Pilot Helmet", PunkAttributeValue(61));
        setAttrStringToEnumMapping("Pink With Hat", PunkAttributeValue(62));
        setAttrStringToEnumMapping("Pipe", PunkAttributeValue(63));
        setAttrStringToEnumMapping("Police Cap", PunkAttributeValue(64));
        setAttrStringToEnumMapping("Purple Eye Shadow", PunkAttributeValue(65));
        setAttrStringToEnumMapping("Purple Hair", PunkAttributeValue(66));
        setAttrStringToEnumMapping("Purple Lipstick", PunkAttributeValue(67));
        setAttrStringToEnumMapping("Red Mohawk", PunkAttributeValue(68));
        setAttrStringToEnumMapping("Regular Shades", PunkAttributeValue(69));
        setAttrStringToEnumMapping("Rosy Cheeks", PunkAttributeValue(70));
        setAttrStringToEnumMapping("Shadow Beard", PunkAttributeValue(71));
        setAttrStringToEnumMapping("Shaved Head", PunkAttributeValue(72));
        setAttrStringToEnumMapping("Silver Chain", PunkAttributeValue(73));
        setAttrStringToEnumMapping("Small Shades", PunkAttributeValue(74));
        setAttrStringToEnumMapping("Smile", PunkAttributeValue(75));
        setAttrStringToEnumMapping("Spots", PunkAttributeValue(76));
        setAttrStringToEnumMapping("Straight Hair", PunkAttributeValue(77));
        setAttrStringToEnumMapping("Straight Hair Blonde", PunkAttributeValue(78));
        setAttrStringToEnumMapping("Straight Hair Dark", PunkAttributeValue(79));
        setAttrStringToEnumMapping("Stringy Hair", PunkAttributeValue(80));
        setAttrStringToEnumMapping("Tassle Hat", PunkAttributeValue(81));
        setAttrStringToEnumMapping("Tiara", PunkAttributeValue(83));
        setAttrStringToEnumMapping("Top Hat", PunkAttributeValue(84));
        setAttrStringToEnumMapping("VR", PunkAttributeValue(87));
        setAttrStringToEnumMapping("Vampire Hair", PunkAttributeValue(85));
        setAttrStringToEnumMapping("Vape", PunkAttributeValue(86));
        setAttrStringToEnumMapping("Welding Goggles", PunkAttributeValue(88));
        setAttrStringToEnumMapping("Wild Blonde", PunkAttributeValue(89));
        setAttrStringToEnumMapping("Wild Hair", PunkAttributeValue(90));
        setAttrStringToEnumMapping("Wild White Hair", PunkAttributeValue(91));
        setAttrStringToEnumMapping("Zombie", PunkAttributeValue(92));

        attrValueToTypeEnumMapping[PunkAttributeValue(0)] = PunkAttributeType(0);
        attrValueToTypeEnumMapping[PunkAttributeValue(1)] = PunkAttributeType(0);
        attrValueToTypeEnumMapping[PunkAttributeValue(2)] = PunkAttributeType(0);
        attrValueToTypeEnumMapping[PunkAttributeValue(3)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(4)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(5)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(6)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(7)] = PunkAttributeType(5);
        attrValueToTypeEnumMapping[PunkAttributeValue(8)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(9)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(10)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(11)] = PunkAttributeType(12);
        attrValueToTypeEnumMapping[PunkAttributeValue(12)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(13)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(14)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(15)] = PunkAttributeType(9);
        attrValueToTypeEnumMapping[PunkAttributeValue(16)] = PunkAttributeType(6);
        attrValueToTypeEnumMapping[PunkAttributeValue(17)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(18)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(19)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(20)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(21)] = PunkAttributeType(10);
        attrValueToTypeEnumMapping[PunkAttributeValue(22)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(23)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(24)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(25)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(26)] = PunkAttributeType(4);
        attrValueToTypeEnumMapping[PunkAttributeValue(27)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(28)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(29)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(30)] = PunkAttributeType(0);
        attrValueToTypeEnumMapping[PunkAttributeValue(31)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(32)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(33)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(34)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(35)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(36)] = PunkAttributeType(9);
        attrValueToTypeEnumMapping[PunkAttributeValue(37)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(38)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(39)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(40)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(41)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(42)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(43)] = PunkAttributeType(5);
        attrValueToTypeEnumMapping[PunkAttributeValue(44)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(45)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(46)] = PunkAttributeType(0);
        attrValueToTypeEnumMapping[PunkAttributeValue(47)] = PunkAttributeType(6);
        attrValueToTypeEnumMapping[PunkAttributeValue(48)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(49)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(50)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(51)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(52)] = PunkAttributeType(7);
        attrValueToTypeEnumMapping[PunkAttributeValue(53)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(54)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(55)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(56)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(57)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(58)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(59)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(60)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(61)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(62)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(63)] = PunkAttributeType(6);
        attrValueToTypeEnumMapping[PunkAttributeValue(64)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(65)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(66)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(67)] = PunkAttributeType(5);
        attrValueToTypeEnumMapping[PunkAttributeValue(68)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(69)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(70)] = PunkAttributeType(11);
        attrValueToTypeEnumMapping[PunkAttributeValue(71)] = PunkAttributeType(3);
        attrValueToTypeEnumMapping[PunkAttributeValue(72)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(73)] = PunkAttributeType(9);
        attrValueToTypeEnumMapping[PunkAttributeValue(74)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(75)] = PunkAttributeType(8);
        attrValueToTypeEnumMapping[PunkAttributeValue(76)] = PunkAttributeType(7);
        attrValueToTypeEnumMapping[PunkAttributeValue(77)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(78)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(79)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(80)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(81)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(82)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(83)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(84)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(85)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(86)] = PunkAttributeType(6);
        attrValueToTypeEnumMapping[PunkAttributeValue(87)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(88)] = PunkAttributeType(2);
        attrValueToTypeEnumMapping[PunkAttributeValue(89)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(90)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(91)] = PunkAttributeType(1);
        attrValueToTypeEnumMapping[PunkAttributeValue(92)] = PunkAttributeType(0);
    }
    
    mapping(PunkAttributeValue => PunkAttributeType) public attrValueToTypeEnumMapping;
    mapping(string => PunkAttributeValue) public attrStringToEnumMapping;
    mapping(PunkAttributeValue => string) public attrEnumToStringMapping;

    
    function setAttrValueToTypeEnumMapping(uint8[][] memory attrValuesAndTypes) internal {
        for (uint i; i < attrValuesAndTypes.length; i++) {

            PunkAttributeValue attrVal = PunkAttributeValue(attrValuesAndTypes[i][0]);
            PunkAttributeType attrType = PunkAttributeType(attrValuesAndTypes[i][1]);
            attrValueToTypeEnumMapping[attrVal] = attrType;

        }
    }
    

    function setAttrStringToEnumMapping(string memory attrStrs, PunkAttributeValue attrEnums) internal {
            string memory attrString = attrStrs;
            PunkAttributeValue attrEnum = attrEnums;
            attrStringToEnumMapping[attrString] = attrEnum;
            attrEnumToStringMapping[attrEnum] = attrString;
    }
    

}