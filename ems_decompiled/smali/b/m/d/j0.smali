.class public Lb/m/d/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lb/m/d/p0$a;

.field public final synthetic d:Landroidx/fragment/app/Fragment;

.field public final synthetic e:Lb/i/i/a;


# direct methods
.method public constructor <init>(Lb/m/d/p0$a;Landroidx/fragment/app/Fragment;Lb/i/i/a;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/j0;->c:Lb/m/d/p0$a;

    iput-object p2, p0, Lb/m/d/j0;->d:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lb/m/d/j0;->e:Lb/i/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/m/d/j0;->c:Lb/m/d/p0$a;

    iget-object v1, p0, Lb/m/d/j0;->d:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lb/m/d/j0;->e:Lb/i/i/a;

    check-cast v0, Lb/m/d/y$d;

    invoke-virtual {v0, v1, v2}, Lb/m/d/y$d;->a(Landroidx/fragment/app/Fragment;Lb/i/i/a;)V

    return-void
.end method
