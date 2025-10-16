.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/zxing/ZXingScannerView;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/d/n;

.field public final synthetic d:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lc/d/d/n;)V
    .locals 0

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->d:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    iput-object p2, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->c:Lc/d/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->d:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 1
    iget-object v1, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;

    .line 3
    iget-object v0, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/a/a/a/c;->f()V

    :cond_0
    if-eqz v1, :cond_6

    .line 4
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->c:Lc/d/d/n;

    check-cast v1, Lcom/emsportal/activity/ScannerActivity;

    const/4 v3, 0x2

    .line 5
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 6
    iget-object v3, v0, Lc/d/d/n;->d:Lc/d/d/a;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v0, v0, Lc/d/d/n;->a:Ljava/lang/String;

    const-string v4, "^E[A-Za-z]{1}[0-9]{9}[A-Za-z]{2}"

    .line 9
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    iget-object v5, v1, Lcom/emsportal/activity/ScannerActivity;->e:Ljava/lang/String;

    const-string v6, "QR_CODE"

    if-eqz v5, :cond_2

    const-string v7, "KEY_CREATE_REQUEST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x144

    const-string v6, "inventory"

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/a/a/a/a;->H()Lcom/google/gson/Gson;

    move-result-object v3

    :try_start_0
    const-class v4, Lc/b/m/d/f;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/m/d/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    invoke-virtual {v1, v0}, Lcom/emsportal/activity/ScannerActivity;->x(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/emsportal/activity/ScannerActivity;->x(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lc/a/a/a/a;->H()Lcom/google/gson/Gson;

    move-result-object v3

    :try_start_1
    const-class v4, Lc/b/m/d/f;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/m/d/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_2

    :catch_1
    invoke-virtual {v1, v0}, Lcom/emsportal/activity/ScannerActivity;->x(Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/emsportal/activity/ScannerActivity;->v(Ljava/lang/String;)V

    :cond_5
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/emsportal/activity/ScannerActivity;->l:Z

    :cond_6
    return-void
.end method
