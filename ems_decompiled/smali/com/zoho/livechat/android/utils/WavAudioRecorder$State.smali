.class public final enum Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/utils/WavAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

.field public static final enum ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

.field public static final enum INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

.field public static final enum READY:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

.field public static final enum RECORDING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

.field public static final enum STOPPED:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    new-instance v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->READY:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    new-instance v3, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    const-string v5, "RECORDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->RECORDING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    new-instance v5, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    new-instance v7, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->STOPPED:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->$VALUES:[Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->$VALUES:[Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-object v0
.end method
