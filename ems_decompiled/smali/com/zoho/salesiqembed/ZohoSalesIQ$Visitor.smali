.class public Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/salesiqembed/ZohoSalesIQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContactNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->setContactNumber(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updatePhone(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->setEmail(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updateEmail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->setName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updateName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setQuestion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->setQuestion(Ljava/lang/String;)V

    return-void
.end method

.method public static startChat(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->startChat(Ljava/lang/String;)V

    return-void
.end method
