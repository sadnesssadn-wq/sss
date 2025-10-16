.class public Lc/b/o/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/o/d;


# direct methods
.method public constructor <init>(Lc/b/o/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/c;->a:Lc/b/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 0

    iget-object p1, p0, Lc/b/o/c;->a:Lc/b/o/d;

    invoke-static {p1}, Lc/b/o/d;->o(Lc/b/o/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/o/c;->a:Lc/b/o/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
