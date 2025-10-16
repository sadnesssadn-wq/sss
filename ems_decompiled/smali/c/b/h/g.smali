.class public Lc/b/h/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/ScannerActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/ScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/g;->c:Lcom/emsportal/activity/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lc/b/h/g;->c:Lcom/emsportal/activity/ScannerActivity;

    const-string p2, "android.permission.CAMERA"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xe

    invoke-static {p1, p2, v0}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
