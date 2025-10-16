.class public Lc/b/o/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lc/b/o/s;


# direct methods
.method public constructor <init>(Lc/b/o/s;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/l;->c:Lc/b/o/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lc/b/o/l;->c:Lc/b/o/s;

    .line 1
    iget-object p1, p1, Lc/b/o/s;->c:Lc/b/o/s;

    .line 2
    invoke-virtual {p1}, Lb/m/d/l;->dismiss()V

    return-void
.end method
