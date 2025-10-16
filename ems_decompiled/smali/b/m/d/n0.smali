.class public Lb/m/d/n0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Landroidx/fragment/app/Fragment;

.field public final synthetic e:Z

.field public final synthetic f:Lb/f/a;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Lb/m/d/r0;

.field public final synthetic i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/a;Landroid/view/View;Lb/m/d/r0;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/n0;->c:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lb/m/d/n0;->d:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lb/m/d/n0;->e:Z

    iput-object p4, p0, Lb/m/d/n0;->f:Lb/f/a;

    iput-object p5, p0, Lb/m/d/n0;->g:Landroid/view/View;

    iput-object p6, p0, Lb/m/d/n0;->h:Lb/m/d/r0;

    iput-object p7, p0, Lb/m/d/n0;->i:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lb/m/d/n0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lb/m/d/n0;->d:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lb/m/d/n0;->e:Z

    iget-object v3, p0, Lb/m/d/n0;->f:Lb/f/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lb/m/d/p0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/a;Z)V

    iget-object v0, p0, Lb/m/d/n0;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/m/d/n0;->h:Lb/m/d/r0;

    iget-object v2, p0, Lb/m/d/n0;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lb/m/d/r0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
