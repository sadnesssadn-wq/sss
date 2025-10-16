.class public Lb/m/d/y$e;
.super Lb/m/d/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/m/d/y;


# direct methods
.method public constructor <init>(Lb/m/d/y;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/y$e;->a:Lb/m/d/y;

    invoke-direct {p0}, Lb/m/d/u;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, Lb/m/d/y$e;->a:Lb/m/d/y;

    .line 1
    iget-object p1, p1, Lb/m/d/y;->q:Lb/m/d/v;

    .line 2
    iget-object v0, p1, Lb/m/d/v;->d:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
