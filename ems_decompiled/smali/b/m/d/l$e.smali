.class public Lb/m/d/l$e;
.super Lb/m/d/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/l;->createFragmentContainer()Lb/m/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/m/d/s;

.field public final synthetic b:Lb/m/d/l;


# direct methods
.method public constructor <init>(Lb/m/d/l;Lb/m/d/s;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/l$e;->b:Lb/m/d/l;

    iput-object p2, p0, Lb/m/d/l$e;->a:Lb/m/d/s;

    invoke-direct {p0}, Lb/m/d/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/m/d/l$e;->a:Lb/m/d/s;

    invoke-virtual {v0}, Lb/m/d/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/m/d/l$e;->a:Lb/m/d/s;

    invoke-virtual {v0, p1}, Lb/m/d/s;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lb/m/d/l$e;->b:Lb/m/d/l;

    invoke-virtual {v0, p1}, Lb/m/d/l;->onFindViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/m/d/l$e;->a:Lb/m/d/s;

    invoke-virtual {v0}, Lb/m/d/s;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/m/d/l$e;->b:Lb/m/d/l;

    invoke-virtual {v0}, Lb/m/d/l;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
