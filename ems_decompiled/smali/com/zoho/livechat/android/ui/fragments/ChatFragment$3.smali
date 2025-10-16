.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shareConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$finalFile:Ljava/io/File;

.field public final synthetic val$fname:Ljava/lang/String;

.field public final synthetic val$fsize:J

.field public final synthetic val$mimetype:Ljava/lang/String;

.field public final synthetic val$previewLayout:Landroid/view/View;

.field public final synthetic val$stream:Ljava/io/InputStream;

.field public final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/view/WindowManager;Landroid/view/View;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$previewLayout:Landroid/view/View;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    iput-object p5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$finalFile:Ljava/io/File;

    iput-object p6, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$fname:Ljava/lang/String;

    iput-wide p7, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$fsize:J

    iput-object p9, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$stream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$previewLayout:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$fname:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$stream:Ljava/io/InputStream;

    iget-wide v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$fsize:J

    invoke-virtual/range {v0 .. v5}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shareFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;J)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$finalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$fname:Ljava/lang/String;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$mimetype:Ljava/lang/String;

    iget-wide v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;->val$fsize:J

    invoke-virtual/range {v0 .. v5}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shareImage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
