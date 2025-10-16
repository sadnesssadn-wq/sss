.class public Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;
    }
.end annotation


# static fields
.field private static listeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;",
            ">;"
        }
    .end annotation
.end field

.field private static seekprogress:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->listeners:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->seekprogress:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearHandler(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->seekprogress:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;

    return-object p0
.end method

.method public static getProgress(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->seekprogress:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->seekprogress:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setListener(Ljava/lang/String;Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static updateSeekProgress(Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->seekprogress:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
