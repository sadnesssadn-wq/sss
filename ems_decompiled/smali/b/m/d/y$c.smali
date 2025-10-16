.class public Lb/m/d/y$c;
.super Lb/a/b;
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
.method public constructor <init>(Lb/m/d/y;Z)V
    .locals 0

    iput-object p1, p0, Lb/m/d/y$c;->a:Lb/m/d/y;

    invoke-direct {p0, p2}, Lb/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lb/m/d/y$c;->a:Lb/m/d/y;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Lb/m/d/y;->C(Z)Z

    iget-object v1, v0, Lb/m/d/y;->h:Lb/a/b;

    invoke-virtual {v1}, Lb/a/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lb/m/d/y;->Y()Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb/m/d/y;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_0
    return-void
.end method
