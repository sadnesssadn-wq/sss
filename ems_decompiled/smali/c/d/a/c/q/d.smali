.class public Lc/d/a/c/q/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/q/d;->f:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lc/d/a/c/q/d;->c:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lc/d/a/c/q/d;->d:I

    iput-boolean p4, p0, Lc/d/a/c/q/d;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/d/a/c/q/d;->c:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lc/d/a/c/q/d;->f:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v2, p0, Lc/d/a/c/q/d;->d:I

    iget-boolean v3, p0, Lc/d/a/c/q/d;->e:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->F(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method
