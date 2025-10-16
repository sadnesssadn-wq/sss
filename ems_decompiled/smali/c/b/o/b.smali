.class public Lc/b/o/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/o/d;


# direct methods
.method public constructor <init>(Lc/b/o/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/b;->a:Lc/b/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 0

    iget-object p1, p0, Lc/b/o/b;->a:Lc/b/o/d;

    invoke-static {p1}, Lc/b/o/d;->o(Lc/b/o/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    invoke-static {p1}, Lb/u/a;->f0(Ljava/lang/String;)V

    invoke-static {}, Lb/u/a;->Y()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/o/b;->a:Lc/b/o/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
