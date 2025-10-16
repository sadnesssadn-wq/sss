.class public Lcom/zoho/wms/common/pex/PEXErrorCodes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COMMON_ERROR:I = 0x6a

.field public static final DECRYPTION_ERROR:I = 0x69

.field public static final INVALID_CREDENTIALS:I = 0x6c

.field public static final INVALID_DATA:I = 0x68

.field public static final INVALID_STATE:I = 0x6b

.field public static final NOT_SUPPORTED:I = 0x66

.field public static final NO_CONNECTION:I = 0x65

.field public static final REMOTE_SERVER_ERROR:I = 0x67


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Common Error"

    return-object p0

    :pswitch_1
    const-string p0, "Invalid Credentials"

    return-object p0

    :pswitch_2
    const-string p0, "Invalid State"

    return-object p0

    :pswitch_3
    const-string p0, "Decryption error"

    return-object p0

    :pswitch_4
    const-string p0, "Invalid Data"

    return-object p0

    :pswitch_5
    const-string p0, "Remote server Error"

    return-object p0

    :pswitch_6
    const-string p0, "Un Supported Pex Operation"

    return-object p0

    :pswitch_7
    const-string p0, "No Active Connection"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
