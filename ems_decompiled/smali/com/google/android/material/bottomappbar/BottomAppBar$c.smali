.class public Lcom/google/android/material/bottomappbar/BottomAppBar$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/c/c0/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/c0/s;)Lb/i/m/c0;
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1
    iget-boolean p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:Z

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lb/i/m/c0;->b()I

    move-result p3

    .line 3
    iput p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0:I

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 5
    iget-boolean p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 6
    iget p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    .line 7
    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result p3

    if-eq p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result v2

    .line 8
    iput v2, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 9
    :goto_1
    iget-object p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 10
    iget-boolean v2, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0:Z

    if-eqz v2, :cond_4

    .line 11
    iget p3, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->k0:I

    .line 12
    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v2

    if-eq p3, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v1

    .line 13
    iput v1, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->k0:I

    move v1, v0

    :cond_4
    if-nez p1, :cond_5

    if-eqz v1, :cond_8

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 15
    iget-object p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Landroid/animation/Animator;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->K()V

    .line 18
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->J()V

    :cond_8
    return-object p2
.end method
