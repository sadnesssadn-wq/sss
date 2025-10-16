.class public final synthetic Lc/b/w/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lc/b/w/m;


# direct methods
.method public synthetic constructor <init>(Lc/b/w/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/w/a;->c:Lc/b/w/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lc/b/w/a;->c:Lc/b/w/m;

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p2}, Lc/b/w/m;->a()V

    return-void
.end method
