.class public Lc/d/a/c/s/d$e;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/s/d;


# direct methods
.method public constructor <init>(Lc/d/a/c/s/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/s/d$e;->a:Lc/d/a/c/s/d;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lc/d/a/c/s/d$e;->a:Lc/d/a/c/s/d;

    invoke-virtual {p1}, Lc/d/a/c/s/d;->cancel()V

    :cond_0
    return-void
.end method
