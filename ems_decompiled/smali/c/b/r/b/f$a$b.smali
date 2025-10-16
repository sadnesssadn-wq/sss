.class public Lc/b/r/b/f$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/r/b/f$a;-><init>(Lc/b/r/b/f;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lc/b/r/b/f$a;


# direct methods
.method public constructor <init>(Lc/b/r/b/f$a;Lc/b/r/b/f;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/b/f$a$b;->d:Lc/b/r/b/f$a;

    iput-object p3, p0, Lc/b/r/b/f$a$b;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/r/b/f$a$b;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lc/b/r/b/f$a$b;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10025b

    new-instance v1, Lc/b/r/b/f$a$b$a;

    invoke-direct {v1, p0}, Lc/b/r/b/f$a$b$a;-><init>(Lc/b/r/b/f$a$b;)V

    invoke-static {p1, v0, v1}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    return-void
.end method
