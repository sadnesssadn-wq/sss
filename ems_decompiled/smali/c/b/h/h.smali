.class public Lc/b/h/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/ScannerActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/ScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/h;->c:Lcom/emsportal/activity/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lc/b/h/h;->c:Lcom/emsportal/activity/ScannerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
