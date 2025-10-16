.class public Lcom/zoho/livechat/android/ZohoLiveChat$Admin;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ZohoLiveChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Admin"
.end annotation


# static fields
.field private static chathandler:Lcom/zoho/livechat/android/ChatActivityInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->chathandler:Lcom/zoho/livechat/android/ChatActivityInterface;

    return-object v0
.end method

.method public static setChatHandler(Lcom/zoho/livechat/android/ChatActivityInterface;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->chathandler:Lcom/zoho/livechat/android/ChatActivityInterface;

    return-void
.end method
