.class public Lcom/zoho/livechat/android/parser/SmileyParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_SMILEY_RES_IDS:[I

.field private static final mSmileyTexts:[Ljava/lang/String;

.field private static smileyParser:Lcom/zoho/livechat/android/parser/SmileyParser;


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0xe2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ":)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ":-)"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, ":^)"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, ":]"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, ":("

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, ":-("

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, ":["

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, ":D"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, ":-D"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, ":))"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, ":-))"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, ":-@"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, ":@"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "X-("

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, ":-p"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, ":-P"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, ":P"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, ":p"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "B-)"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, ";)"

    const/16 v22, 0x13

    aput-object v2, v1, v22

    const-string v2, ";-)"

    const/16 v23, 0x14

    aput-object v2, v1, v23

    const/16 v2, 0x15

    const-string v24, ":-/"

    aput-object v24, v1, v2

    const/16 v2, 0x16

    const-string v24, ":/"

    aput-object v24, v1, v2

    const/16 v2, 0x17

    const-string v24, ":joy:"

    aput-object v24, v1, v2

    const/16 v2, 0x18

    const-string v24, ":o"

    aput-object v24, v1, v2

    const/16 v2, 0x19

    const-string v24, ":O"

    aput-object v24, v1, v2

    const/16 v2, 0x1a

    const-string v24, ":-O"

    aput-object v24, v1, v2

    const/16 v2, 0x1b

    const-string v24, ":o"

    aput-object v24, v1, v2

    const/16 v2, 0x1c

    const-string v24, ":xs"

    aput-object v24, v1, v2

    const/16 v2, 0x1d

    const-string v24, ":neutral:"

    aput-object v24, v1, v2

    const/16 v2, 0x1e

    const-string v24, ":-s"

    aput-object v24, v1, v2

    const/16 v2, 0x1f

    const-string v24, ":-S"

    aput-object v24, v1, v2

    const/16 v2, 0x20

    const-string v24, ":s"

    aput-object v24, v1, v2

    const/16 v2, 0x21

    const-string v24, ":S"

    aput-object v24, v1, v2

    const/16 v2, 0x22

    const-string v24, ":yummy:"

    aput-object v24, v1, v2

    const/16 v2, 0x23

    const-string v24, ":yuck:"

    aput-object v24, v1, v2

    const/16 v2, 0x24

    const-string v24, "|-)"

    aput-object v24, v1, v2

    const/16 v2, 0x25

    const-string v24, "I-)"

    aput-object v24, v1, v2

    const/16 v2, 0x26

    const-string v24, "(6.6)"

    aput-object v24, v1, v2

    const/16 v2, 0x27

    const-string v24, "+o("

    aput-object v24, v1, v2

    const/16 v2, 0x28

    const-string v24, ":injured:"

    aput-object v24, v1, v2

    const/16 v2, 0x29

    const-string v24, "*-:)"

    aput-object v24, v1, v2

    const/16 v2, 0x2a

    const-string v24, "?D"

    aput-object v24, v1, v2

    const/16 v2, 0x2b

    const-string v24, ":tensed:"

    aput-object v24, v1, v2

    const/16 v2, 0x2c

    const-string v24, ":search:"

    aput-object v24, v1, v2

    const/16 v2, 0x2d

    const-string v24, "D:"

    aput-object v24, v1, v2

    const/16 v2, 0x2e

    const-string v24, ":-#"

    aput-object v24, v1, v2

    const/16 v2, 0x2f

    const-string v24, ":-X"

    aput-object v24, v1, v2

    const/16 v2, 0x30

    const-string v24, ":shutup:"

    aput-object v24, v1, v2

    const/16 v2, 0x31

    const-string v24, ":angel:"

    aput-object v24, v1, v2

    const/16 v2, 0x32

    const-string v24, "(A)"

    aput-object v24, v1, v2

    const/16 v2, 0x33

    const-string v24, "(a)"

    aput-object v24, v1, v2

    const/16 v2, 0x34

    const-string v24, "O-)"

    aput-object v24, v1, v2

    const/16 v2, 0x35

    const-string v24, "O:)"

    aput-object v24, v1, v2

    const/16 v2, 0x36

    const-string v24, "O:-)"

    aput-object v24, v1, v2

    const/16 v2, 0x37

    const-string v24, "(Y)"

    aput-object v24, v1, v2

    const/16 v2, 0x38

    const-string v24, "(y)"

    aput-object v24, v1, v2

    const/16 v2, 0x39

    const-string v24, ":+1:"

    aput-object v24, v1, v2

    const/16 v2, 0x3a

    const-string v24, ":x-"

    aput-object v24, v1, v2

    const/16 v2, 0x3b

    const-string v24, "(n)"

    aput-object v24, v1, v2

    const/16 v2, 0x3c

    const-string v24, ":-1:"

    aput-object v24, v1, v2

    const/16 v2, 0x3d

    const-string v24, "(N)"

    aput-object v24, v1, v2

    const/16 v2, 0x3e

    const-string v24, ":awe:"

    aput-object v24, v1, v2

    const/16 v2, 0x3f

    const-string v24, ":bored:"

    aput-object v24, v1, v2

    const/16 v2, 0x40

    const-string v24, ":curious:"

    aput-object v24, v1, v2

    const/16 v2, 0x41

    const-string v24, ":evil:"

    aput-object v24, v1, v2

    const/16 v2, 0x42

    const-string v24, ":grinning:"

    aput-object v24, v1, v2

    const/16 v2, 0x43

    const-string v24, ":jealous:"

    aput-object v24, v1, v2

    const/16 v2, 0x44

    const-string v24, "-_-"

    aput-object v24, v1, v2

    const/16 v2, 0x45

    const-string v24, ":relaxed:"

    aput-object v24, v1, v2

    const/16 v2, 0x46

    const-string v24, "-.-"

    aput-object v24, v1, v2

    const/16 v2, 0x47

    const-string v24, ":stressed-out:"

    aput-object v24, v1, v2

    const/16 v2, 0x48

    const-string v24, ":-?"

    aput-object v24, v1, v2

    const/16 v2, 0x49

    const-string v24, ":thinking:"

    aput-object v24, v1, v2

    const/16 v2, 0x4a

    const-string v24, "(=_=)"

    aput-object v24, v1, v2

    const/16 v2, 0x4b

    const-string v24, ":tired:"

    aput-object v24, v1, v2

    const/16 v2, 0x4c

    const-string v24, ":upset:"

    aput-object v24, v1, v2

    const/16 v2, 0x4d

    const-string v24, ":blush:"

    aput-object v24, v1, v2

    const/16 v2, 0x4e

    const-string v24, ":bye-bye:"

    aput-object v24, v1, v2

    const/16 v2, 0x4f

    const-string v24, ":facepalm:"

    aput-object v24, v1, v2

    const/16 v2, 0x50

    const-string v24, ":-{}"

    aput-object v24, v1, v2

    const/16 v2, 0x51

    const-string v24, ":feeling-cold:"

    aput-object v24, v1, v2

    const/16 v2, 0x52

    const-string v24, ":feeling-warm:"

    aput-object v24, v1, v2

    const/16 v2, 0x53

    const-string v24, "(({..}))"

    aput-object v24, v1, v2

    const/16 v2, 0x54

    const-string v24, ":headache:"

    aput-object v24, v1, v2

    const/16 v2, 0x55

    const-string v24, ":namaste:"

    aput-object v24, v1, v2

    const/16 v2, 0x56

    const-string v24, ":raising-hand:"

    aput-object v24, v1, v2

    const/16 v2, 0x57

    const-string v24, ":super:"

    aput-object v24, v1, v2

    const/16 v2, 0x58

    const-string v24, ":fist:"

    aput-object v24, v1, v2

    const/16 v2, 0x59

    const-string v24, ":thug:"

    aput-object v24, v1, v2

    const/16 v2, 0x5a

    const-string v24, ":v:"

    aput-object v24, v1, v2

    const/16 v2, 0x5b

    const-string v24, ":victory:"

    aput-object v24, v1, v2

    const/16 v2, 0x5c

    const-string v24, ":clap:"

    aput-object v24, v1, v2

    const/16 v2, 0x5d

    const-string v24, ":yoyo:"

    aput-object v24, v1, v2

    const/16 v2, 0x5e

    const-string v24, ":target:"

    aput-object v24, v1, v2

    const/16 v2, 0x5f

    const-string v24, ":foosball:"

    aput-object v24, v1, v2

    const/16 v2, 0x60

    const-string v24, ":smile:"

    aput-object v24, v1, v2

    const/16 v2, 0x61

    const-string v24, ":sad:"

    aput-object v24, v1, v2

    const/16 v2, 0x62

    const-string v24, ":happy:"

    aput-object v24, v1, v2

    const/16 v2, 0x63

    const-string v24, ":angry:"

    aput-object v24, v1, v2

    const/16 v2, 0x64

    const-string v24, ":razz:"

    aput-object v24, v1, v2

    const/16 v2, 0x65

    const-string v24, ":cool:"

    aput-object v24, v1, v2

    const/16 v2, 0x66

    const-string v24, ":wink:"

    aput-object v24, v1, v2

    const/16 v2, 0x67

    const-string v24, ":smirk:"

    aput-object v24, v1, v2

    const/16 v2, 0x68

    const-string v24, ":surprise:"

    aput-object v24, v1, v2

    const/16 v2, 0x69

    const-string v24, ":love:"

    aput-object v24, v1, v2

    const/16 v2, 0x6a

    const-string v24, ":worry:"

    aput-object v24, v1, v2

    const/16 v2, 0x6b

    const-string v24, ":sleepy:"

    aput-object v24, v1, v2

    const/16 v2, 0x6c

    const-string v24, ":faint:"

    aput-object v24, v1, v2

    const/16 v2, 0x6d

    const-string v24, ":sick:"

    aput-object v24, v1, v2

    const/16 v2, 0x6e

    const-string v24, ":idea:"

    aput-object v24, v1, v2

    const/16 v2, 0x6f

    const-string v24, ":doubt:"

    aput-object v24, v1, v2

    const/16 v2, 0x70

    const-string v24, ":anxious:"

    aput-object v24, v1, v2

    const/16 v2, 0x71

    const-string v24, ":keep-quiet:"

    aput-object v24, v1, v2

    const/16 v2, 0x72

    const-string v24, ":peace:"

    aput-object v24, v1, v2

    const/16 v2, 0x73

    const-string v24, ":thumbsup:"

    aput-object v24, v1, v2

    const/16 v2, 0x74

    const-string v24, ":thumbsdown:"

    aput-object v24, v1, v2

    const/16 v2, 0x75

    const-string v24, ":flexed-biceps:"

    aput-object v24, v1, v2

    const/16 v2, 0x76

    const-string v24, ":biceps:"

    aput-object v24, v1, v2

    const/16 v2, 0x77

    const-string v24, ":flag:"

    aput-object v24, v1, v2

    const/16 v2, 0x78

    const-string v24, "C(_)"

    aput-object v24, v1, v2

    const/16 v2, 0x79

    const-string v24, ":coffee-cup:"

    aput-object v24, v1, v2

    const/16 v2, 0x7a

    const-string v24, ":food:"

    aput-object v24, v1, v2

    const/16 v2, 0x7b

    const-string v24, ":chicken:"

    aput-object v24, v1, v2

    const/16 v2, 0x7c

    const-string v24, ":gift-box:"

    aput-object v24, v1, v2

    const/16 v2, 0x7d

    const-string v24, ":champagne:"

    aput-object v24, v1, v2

    const/16 v2, 0x7e

    const-string v24, ":party:"

    aput-object v24, v1, v2

    const/16 v2, 0x7f

    const-string v24, ":poop:"

    aput-object v24, v1, v2

    const/16 v2, 0x80

    const-string v24, ":peanuts:"

    aput-object v24, v1, v2

    const/16 v2, 0x81

    const-string v24, ":birthday:"

    aput-object v24, v1, v2

    const/16 v2, 0x82

    const-string v24, ":fireworks:"

    aput-object v24, v1, v2

    const/16 v2, 0x83

    const-string v24, ":christmas-tree:"

    aput-object v24, v1, v2

    const/16 v2, 0x84

    const-string v24, ":santa-hat:"

    aput-object v24, v1, v2

    const/16 v2, 0x85

    const-string v24, ":new-year:"

    aput-object v24, v1, v2

    const/16 v2, 0x86

    const-string v24, ":singing:"

    aput-object v24, v1, v2

    const/16 v2, 0x87

    const-string v24, ":break-boy:"

    aput-object v24, v1, v2

    const/16 v2, 0x88

    const-string v24, ":break-girl:"

    aput-object v24, v1, v2

    const/16 v2, 0x89

    const-string v24, ":woman-dancing:"

    aput-object v24, v1, v2

    const/16 v2, 0x8a

    const-string v24, ":man-dancing:"

    aput-object v24, v1, v2

    const/16 v2, 0x8b

    const-string v24, ":yoga:"

    aput-object v24, v1, v2

    const/16 v2, 0x8c

    const-string v24, ":karate:"

    aput-object v24, v1, v2

    const/16 v2, 0x8d

    const-string v24, ":medicine:"

    aput-object v24, v1, v2

    const/16 v2, 0x8e

    const-string v24, ":first-aid-box:"

    aput-object v24, v1, v2

    const/16 v2, 0x8f

    const-string v24, ":fire-extinguisher:"

    aput-object v24, v1, v2

    const/16 v2, 0x90

    const-string v24, ":fire:"

    aput-object v24, v1, v2

    const/16 v2, 0x91

    const-string v24, ":man-cycling:"

    aput-object v24, v1, v2

    const/16 v2, 0x92

    const-string v24, ":woman-cycling:"

    aput-object v24, v1, v2

    const/16 v2, 0x93

    const-string v24, ":woman-running:"

    aput-object v24, v1, v2

    const/16 v2, 0x94

    const-string v24, ":man-running:"

    aput-object v24, v1, v2

    const/16 v2, 0x95

    const-string v24, ":man-swimming:"

    aput-object v24, v1, v2

    const/16 v2, 0x96

    const-string v24, ":woman-swimming:"

    aput-object v24, v1, v2

    const/16 v2, 0x97

    const-string v24, ":football:"

    aput-object v24, v1, v2

    const/16 v2, 0x98

    const-string v24, ":basketball:"

    aput-object v24, v1, v2

    const/16 v2, 0x99

    const-string v24, ":volleyball:"

    aput-object v24, v1, v2

    const/16 v2, 0x9a

    const-string v24, ":tennis:"

    aput-object v24, v1, v2

    const/16 v2, 0x9b

    const-string v24, ":badminton:"

    aput-object v24, v1, v2

    const/16 v2, 0x9c

    const-string v24, ":table-tennis:"

    aput-object v24, v1, v2

    const/16 v2, 0x9d

    const-string v24, ":pingpong:"

    aput-object v24, v1, v2

    const/16 v2, 0x9e

    const-string v24, ":cricket:"

    aput-object v24, v1, v2

    const/16 v2, 0x9f

    const-string v24, ":baseball:"

    aput-object v24, v1, v2

    const/16 v2, 0xa0

    const-string v24, ":hockey:"

    aput-object v24, v1, v2

    const/16 v2, 0xa1

    const-string v24, ":golf:"

    aput-object v24, v1, v2

    const/16 v2, 0xa2

    const-string v24, ":snooker:"

    aput-object v24, v1, v2

    const/16 v2, 0xa3

    const-string v24, ":chess:"

    aput-object v24, v1, v2

    const/16 v2, 0xa4

    const-string v24, ":football-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xa5

    const-string v24, ":basketball-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xa6

    const-string v24, ":male-volleyball-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xa7

    const-string v24, ":female-volleyball-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xa8

    const-string v24, ":female-tennis-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xa9

    const-string v24, ":male-tennis-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xaa

    const-string v24, ":badminton-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xab

    const-string v24, ":male-TT-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xac

    const-string v24, ":female-TT-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xad

    const-string v24, ":batsman:"

    aput-object v24, v1, v2

    const/16 v2, 0xae

    const-string v24, ":bowler:"

    aput-object v24, v1, v2

    const/16 v2, 0xaf

    const-string v24, ":batter:"

    aput-object v24, v1, v2

    const/16 v2, 0xb0

    const-string v24, ":pitcher:"

    aput-object v24, v1, v2

    const/16 v2, 0xb1

    const-string v24, ":hockey-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xb2

    const-string v24, ":golfer:"

    aput-object v24, v1, v2

    const/16 v2, 0xb3

    const-string v24, ":gymnast:"

    aput-object v24, v1, v2

    const/16 v2, 0xb4

    const-string v24, ":snooker-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xb5

    const-string v24, ":chess-player:"

    aput-object v24, v1, v2

    const/16 v2, 0xb6

    const-string v24, ":eid-mubarak:"

    aput-object v24, v1, v2

    const/16 v2, 0xb7

    const-string v24, ":kaaba:"

    aput-object v24, v1, v2

    const/16 v2, 0xb8

    const-string v24, ":gold-medal:"

    aput-object v24, v1, v2

    const/16 v2, 0xb9

    const-string v24, ":silver-medal:"

    aput-object v24, v1, v2

    const/16 v2, 0xba

    const-string v24, ":bronze-medal:"

    aput-object v24, v1, v2

    const/16 v2, 0xbb

    const-string v24, ":refugee-olympic-team:"

    aput-object v24, v1, v2

    const/16 v2, 0xbc

    const-string v24, ":running:"

    aput-object v24, v1, v2

    const/16 v2, 0xbd

    const-string v24, ":hurdles:"

    aput-object v24, v1, v2

    const/16 v2, 0xbe

    const-string v24, ":high-jump:"

    aput-object v24, v1, v2

    const/16 v2, 0xbf

    const-string v24, ":long-jump:"

    aput-object v24, v1, v2

    const/16 v2, 0xc0

    const-string v24, ":pole-vault:"

    aput-object v24, v1, v2

    const/16 v2, 0xc1

    const-string v24, ":discus-throw:"

    aput-object v24, v1, v2

    const/16 v2, 0xc2

    const-string v24, ":hammer-throw:"

    aput-object v24, v1, v2

    const/16 v2, 0xc3

    const-string v24, ":javelin-throw:"

    aput-object v24, v1, v2

    const/16 v2, 0xc4

    const-string v24, ":shotput-throw:"

    aput-object v24, v1, v2

    const/16 v2, 0xc5

    const-string v24, ":boxing:"

    aput-object v24, v1, v2

    const/16 v2, 0xc6

    const-string v24, ":fencing:"

    aput-object v24, v1, v2

    const/16 v2, 0xc7

    const-string v24, ":judo:"

    aput-object v24, v1, v2

    const/16 v2, 0xc8

    const-string v24, ":weightlifting:"

    aput-object v24, v1, v2

    const/16 v2, 0xc9

    const-string v24, ":wrestling:"

    aput-object v24, v1, v2

    const/16 v2, 0xca

    const-string v24, ":archery:"

    aput-object v24, v1, v2

    const/16 v2, 0xcb

    const-string v24, ":shooting:"

    aput-object v24, v1, v2

    const/16 v2, 0xcc

    const-string v24, ":equestrian:"

    aput-object v24, v1, v2

    const/16 v2, 0xcd

    const-string v24, ":canoeing:"

    aput-object v24, v1, v2

    const/16 v2, 0xce

    const-string v24, ":diving:"

    aput-object v24, v1, v2

    const/16 v2, 0xcf

    const-string v24, ":rhythmic-gymnastics:"

    aput-object v24, v1, v2

    const/16 v2, 0xd0

    const-string v24, ":bicycle:"

    aput-object v24, v1, v2

    const/16 v2, 0xd1

    const-string v24, ":sports-bike:"

    aput-object v24, v1, v2

    const/16 v2, 0xd2

    const-string v24, ":cruiser-bike:"

    aput-object v24, v1, v2

    const/16 v2, 0xd3

    const-string v24, ":motor-scooter:"

    aput-object v24, v1, v2

    const/16 v2, 0xd4

    const-string v24, ":car:"

    aput-object v24, v1, v2

    const/16 v2, 0xd5

    const-string v24, ":taxi:"

    aput-object v24, v1, v2

    const/16 v2, 0xd6

    const-string v24, ":bus:"

    aput-object v24, v1, v2

    const/16 v2, 0xd7

    const-string v24, ":train:"

    aput-object v24, v1, v2

    const/16 v2, 0xd8

    const-string v24, ":police-car:"

    aput-object v24, v1, v2

    const/16 v2, 0xd9

    const-string v24, ":ambulance:"

    aput-object v24, v1, v2

    const/16 v2, 0xda

    const-string v24, ":fire-engine:"

    aput-object v24, v1, v2

    const/16 v2, 0xdb

    const-string v24, ":aeroplane:"

    aput-object v24, v1, v2

    const/16 v2, 0xdc

    const-string v24, ":passenger-ship:"

    aput-object v24, v1, v2

    const/16 v2, 0xdd

    const-string v24, ":rating-angry:"

    aput-object v24, v1, v2

    const/16 v2, 0xde

    const-string v24, ":rating-sad:"

    aput-object v24, v1, v2

    const/16 v2, 0xdf

    const-string v24, ":rating-neutral:"

    aput-object v24, v1, v2

    const/16 v2, 0xe0

    const-string v24, ":rating-happy:"

    aput-object v24, v1, v2

    const/16 v2, 0xe1

    const-string v24, ":rating-excited:"

    aput-object v24, v1, v2

    sput-object v1, Lcom/zoho/livechat/android/parser/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    new-array v0, v0, [I

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_smile:I

    aput v1, v0, v3

    aput v1, v0, v4

    aput v1, v0, v5

    aput v1, v0, v6

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_sad:I

    aput v1, v0, v7

    aput v1, v0, v8

    aput v1, v0, v9

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_happy:I

    aput v1, v0, v10

    aput v1, v0, v11

    aput v1, v0, v12

    aput v1, v0, v13

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_angry:I

    aput v1, v0, v14

    aput v1, v0, v15

    aput v1, v0, v16

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_razz:I

    aput v1, v0, v17

    aput v1, v0, v18

    aput v1, v0, v19

    aput v1, v0, v20

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_cool:I

    aput v1, v0, v21

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_wink:I

    aput v1, v0, v22

    aput v1, v0, v23

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_smirk:I

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v2, 0x16

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_joy:I

    const/16 v2, 0x17

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_surprise:I

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v2, 0x1b

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_love:I

    const/16 v2, 0x1c

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_neutral:I

    const/16 v2, 0x1d

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_worry:I

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v2, 0x21

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_yummy:I

    const/16 v2, 0x22

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_yuck:I

    const/16 v2, 0x23

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_sleepy:I

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v2, 0x25

    aput v1, v0, v2

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_faint:I

    const/16 v3, 0x26

    aput v2, v0, v3

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_sick:I

    const/16 v4, 0x27

    aput v3, v0, v4

    sget v4, Lcom/zoho/livechat/android/R$drawable;->salesiq_injured:I

    const/16 v5, 0x28

    aput v4, v0, v5

    sget v4, Lcom/zoho/livechat/android/R$drawable;->salesiq_idea:I

    const/16 v5, 0x29

    aput v4, v0, v5

    sget v5, Lcom/zoho/livechat/android/R$drawable;->salesiq_doubt:I

    const/16 v6, 0x2a

    aput v5, v0, v6

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_tensed:I

    const/16 v7, 0x2b

    aput v6, v0, v7

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_search:I

    const/16 v7, 0x2c

    aput v6, v0, v7

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_anxious:I

    const/16 v7, 0x2d

    aput v6, v0, v7

    sget v7, Lcom/zoho/livechat/android/R$drawable;->salesiq_shutup:I

    const/16 v8, 0x2e

    aput v7, v0, v8

    const/16 v8, 0x2f

    aput v7, v0, v8

    const/16 v8, 0x30

    aput v7, v0, v8

    sget v8, Lcom/zoho/livechat/android/R$drawable;->salesiq_angel:I

    const/16 v9, 0x31

    aput v8, v0, v9

    const/16 v9, 0x32

    aput v8, v0, v9

    const/16 v9, 0x33

    aput v8, v0, v9

    const/16 v9, 0x34

    aput v8, v0, v9

    const/16 v9, 0x35

    aput v8, v0, v9

    const/16 v9, 0x36

    aput v8, v0, v9

    sget v9, Lcom/zoho/livechat/android/R$drawable;->salesiq_thumbsup:I

    const/16 v10, 0x37

    aput v9, v0, v10

    const/16 v10, 0x38

    aput v9, v0, v10

    const/16 v10, 0x39

    aput v9, v0, v10

    const/16 v10, 0x3a

    aput v9, v0, v10

    sget v10, Lcom/zoho/livechat/android/R$drawable;->salesiq_thumbsdown:I

    const/16 v11, 0x3b

    aput v10, v0, v11

    const/16 v11, 0x3c

    aput v10, v0, v11

    const/16 v11, 0x3d

    aput v10, v0, v11

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_awe:I

    const/16 v12, 0x3e

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_bored:I

    const/16 v12, 0x3f

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_curious:I

    const/16 v12, 0x40

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_evil:I

    const/16 v12, 0x41

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_grinning:I

    const/16 v12, 0x42

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_jealous:I

    const/16 v12, 0x43

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_relaxed:I

    const/16 v12, 0x44

    aput v11, v0, v12

    const/16 v12, 0x45

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_stressed:I

    const/16 v12, 0x46

    aput v11, v0, v12

    const/16 v12, 0x47

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_thinking:I

    const/16 v12, 0x48

    aput v11, v0, v12

    const/16 v12, 0x49

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_tired:I

    const/16 v12, 0x4a

    aput v11, v0, v12

    const/16 v12, 0x4b

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_upset:I

    const/16 v12, 0x4c

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_blush:I

    const/16 v12, 0x4d

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_byebye:I

    const/16 v12, 0x4e

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_facepalm:I

    const/16 v12, 0x4f

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_feelingcold:I

    const/16 v12, 0x50

    aput v11, v0, v12

    const/16 v12, 0x51

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_feelingwarm:I

    const/16 v12, 0x52

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_headache:I

    const/16 v12, 0x53

    aput v11, v0, v12

    const/16 v12, 0x54

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_namaste:I

    const/16 v12, 0x55

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_rasinghand:I

    const/16 v12, 0x56

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_supersm:I

    const/16 v12, 0x57

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_thug:I

    const/16 v12, 0x58

    aput v11, v0, v12

    const/16 v12, 0x59

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_victory:I

    const/16 v12, 0x5a

    aput v11, v0, v12

    const/16 v12, 0x5b

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_clap:I

    const/16 v12, 0x5c

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_yoyo:I

    const/16 v12, 0x5d

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_target:I

    const/16 v12, 0x5e

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_foosball:I

    const/16 v12, 0x5f

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_smile:I

    const/16 v12, 0x60

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_sad:I

    const/16 v12, 0x61

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_happy:I

    const/16 v12, 0x62

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_angry:I

    const/16 v12, 0x63

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_razz:I

    const/16 v12, 0x64

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_cool:I

    const/16 v12, 0x65

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_wink:I

    const/16 v12, 0x66

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_smirk:I

    const/16 v12, 0x67

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_surprise:I

    const/16 v12, 0x68

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_love:I

    const/16 v12, 0x69

    aput v11, v0, v12

    sget v11, Lcom/zoho/livechat/android/R$drawable;->salesiq_worry:I

    const/16 v12, 0x6a

    aput v11, v0, v12

    const/16 v11, 0x6b

    aput v1, v0, v11

    const/16 v1, 0x6c

    aput v2, v0, v1

    const/16 v1, 0x6d

    aput v3, v0, v1

    const/16 v1, 0x6e

    aput v4, v0, v1

    const/16 v1, 0x6f

    aput v5, v0, v1

    const/16 v1, 0x70

    aput v6, v0, v1

    const/16 v1, 0x71

    aput v7, v0, v1

    const/16 v1, 0x72

    aput v8, v0, v1

    const/16 v1, 0x73

    aput v9, v0, v1

    const/16 v1, 0x74

    aput v10, v0, v1

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_biceps:I

    const/16 v2, 0x75

    aput v1, v0, v2

    const/16 v2, 0x76

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_flag:I

    const/16 v2, 0x77

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_coffee:I

    const/16 v2, 0x78

    aput v1, v0, v2

    const/16 v2, 0x79

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_food:I

    const/16 v2, 0x7a

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_chicken:I

    const/16 v2, 0x7b

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_giftbox:I

    const/16 v2, 0x7c

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_champagne:I

    const/16 v2, 0x7d

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_party:I

    const/16 v2, 0x7e

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_poop:I

    const/16 v2, 0x7f

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_peanuts:I

    const/16 v2, 0x80

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_birthday:I

    const/16 v2, 0x81

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_fireworks:I

    const/16 v2, 0x82

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_chrishmas:I

    const/16 v2, 0x83

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_santa:I

    const/16 v2, 0x84

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_newyear:I

    const/16 v2, 0x85

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_singing:I

    const/16 v2, 0x86

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_breakboy:I

    const/16 v2, 0x87

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_breakgirl:I

    const/16 v2, 0x88

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_womandancing:I

    const/16 v2, 0x89

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_mandancing:I

    const/16 v2, 0x8a

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_yoga:I

    const/16 v2, 0x8b

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_karate:I

    const/16 v2, 0x8c

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_medicine:I

    const/16 v2, 0x8d

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_firstaid:I

    const/16 v2, 0x8e

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_fireextinguisher:I

    const/16 v2, 0x8f

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_fire:I

    const/16 v2, 0x90

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_male_cyclist:I

    const/16 v2, 0x91

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_female_cyclist:I

    const/16 v2, 0x92

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_female_runner:I

    const/16 v2, 0x93

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_male_runner:I

    const/16 v2, 0x94

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_male_swimmer:I

    const/16 v2, 0x95

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_female_swimmer:I

    const/16 v2, 0x96

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_football:I

    const/16 v2, 0x97

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_basketball:I

    const/16 v2, 0x98

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_volleyball:I

    const/16 v2, 0x99

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_tennis:I

    const/16 v2, 0x9a

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_badminton:I

    const/16 v2, 0x9b

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_table_tennis:I

    const/16 v2, 0x9c

    aput v1, v0, v2

    const/16 v2, 0x9d

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_cricket:I

    const/16 v2, 0x9e

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_baseball:I

    const/16 v2, 0x9f

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_hockey:I

    const/16 v2, 0xa0

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_golf:I

    const/16 v2, 0xa1

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_snooker:I

    const/16 v2, 0xa2

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_chess:I

    const/16 v2, 0xa3

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_football_player:I

    const/16 v2, 0xa4

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_basketball_player:I

    const/16 v2, 0xa5

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_male_volleyball_player:I

    const/16 v2, 0xa6

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_female_volleyball_player:I

    const/16 v2, 0xa7

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_female_tennis_player:I

    const/16 v2, 0xa8

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_male_tennis_player:I

    const/16 v2, 0xa9

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_badminton_player:I

    const/16 v2, 0xaa

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_male_tt_player:I

    const/16 v2, 0xab

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_female_tt_player:I

    const/16 v2, 0xac

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_batsman:I

    const/16 v2, 0xad

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_bowler:I

    const/16 v2, 0xae

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_batter:I

    const/16 v2, 0xaf

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_pitcher:I

    const/16 v2, 0xb0

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_hockey_player:I

    const/16 v2, 0xb1

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_golfer:I

    const/16 v2, 0xb2

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_gymnast:I

    const/16 v2, 0xb3

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_snooker_player:I

    const/16 v2, 0xb4

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_chess_player:I

    const/16 v2, 0xb5

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_eid_mubarak:I

    const/16 v2, 0xb6

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_kaaba:I

    const/16 v2, 0xb7

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_gold_medal:I

    const/16 v2, 0xb8

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_silver_medal:I

    const/16 v2, 0xb9

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_bronze:I

    const/16 v2, 0xba

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_refugee:I

    const/16 v2, 0xbb

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_running:I

    const/16 v2, 0xbc

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_hurdles:I

    const/16 v2, 0xbd

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_high_jump:I

    const/16 v2, 0xbe

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_long_jump:I

    const/16 v2, 0xbf

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_pole_vault:I

    const/16 v2, 0xc0

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_discus_throw:I

    const/16 v2, 0xc1

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_hammer_throw:I

    const/16 v2, 0xc2

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_javelin_throw:I

    const/16 v2, 0xc3

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_shotput_throw:I

    const/16 v2, 0xc4

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_boxing:I

    const/16 v2, 0xc5

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_fencing:I

    const/16 v2, 0xc6

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_judo:I

    const/16 v2, 0xc7

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_weightlifting:I

    const/16 v2, 0xc8

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_wrestling:I

    const/16 v2, 0xc9

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_archery:I

    const/16 v2, 0xca

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_shooting:I

    const/16 v2, 0xcb

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_equestrian:I

    const/16 v2, 0xcc

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_canoeing:I

    const/16 v2, 0xcd

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_diving:I

    const/16 v2, 0xce

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_rythmic_gymnastics:I

    const/16 v2, 0xcf

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_bicycle:I

    const/16 v2, 0xd0

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_sports_bike:I

    const/16 v2, 0xd1

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_cruiser_bike:I

    const/16 v2, 0xd2

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_motor_scooter:I

    const/16 v2, 0xd3

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_car:I

    const/16 v2, 0xd4

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_taxi:I

    const/16 v2, 0xd5

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_bus:I

    const/16 v2, 0xd6

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_train:I

    const/16 v2, 0xd7

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_police_car:I

    const/16 v2, 0xd8

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_ambulance:I

    const/16 v2, 0xd9

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_fire_engine:I

    const/16 v2, 0xda

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_aeroplane:I

    const/16 v2, 0xdb

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_passenger_ship:I

    const/16 v2, 0xdc

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_angry:I

    const/16 v2, 0xdd

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_sad:I

    const/16 v2, 0xde

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_neutral:I

    const/16 v2, 0xdf

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_happy:I

    const/16 v2, 0xe0

    aput v1, v0, v2

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_excited:I

    const/16 v2, 0xe1

    aput v1, v0, v2

    sput-object v0, Lcom/zoho/livechat/android/parser/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/parser/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/parser/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Lcom/zoho/livechat/android/parser/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/parser/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zoho/livechat/android/parser/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "(^|[ \\n .])"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/parser/SmileyParser;->getEscapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?=$|[ \\n .])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zoho/livechat/android/parser/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v0, v0

    sget-object v1, Lcom/zoho/livechat/android/parser/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/zoho/livechat/android/parser/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    sget-object v3, Lcom/zoho/livechat/android/parser/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Smiley resource ID/text mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getEscapedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "\\("

    const-string v1, "\\\\("

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\)"

    const-string v2, "\\\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const-string v2, "\\\\|"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "\\\\+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    const-string v2, "\\\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    const-string v2, "\\\\?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\["

    const-string v2, "\\\\["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\]"

    const-string v2, "\\\\]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{"

    const-string v2, "\\\\{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\}"

    const-string v2, "\\\\}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public static getInstance()Lcom/zoho/livechat/android/parser/SmileyParser;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/parser/SmileyParser;->smileyParser:Lcom/zoho/livechat/android/parser/SmileyParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/parser/SmileyParser;

    invoke-direct {v0}, Lcom/zoho/livechat/android/parser/SmileyParser;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/parser/SmileyParser;->smileyParser:Lcom/zoho/livechat/android/parser/SmileyParser;

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/parser/SmileyParser;->smileyParser:Lcom/zoho/livechat/android/parser/SmileyParser;

    return-object v0
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/zoho/livechat/android/parser/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zoho/livechat/android/parser/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x3

    const/high16 v5, 0x41b00000    # 22.0f

    const/4 v6, 0x0

    if-gt v3, v4, :cond_0

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    :goto_1
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_0
    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    goto :goto_1

    :goto_2
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v2, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public parseSmileySpans([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method
