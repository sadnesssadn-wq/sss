.class public Lc/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a;->c:Lcom/emsportal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lc/b/a;->c:Lcom/emsportal/MainActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
