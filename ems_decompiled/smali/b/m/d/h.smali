.class public Lb/m/d/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lb/m/d/w0$d;

.field public final synthetic d:Lb/m/d/w0$d;

.field public final synthetic e:Z

.field public final synthetic f:Lb/f/a;


# direct methods
.method public constructor <init>(Lb/m/d/c;Lb/m/d/w0$d;Lb/m/d/w0$d;ZLb/f/a;)V
    .locals 0

    iput-object p2, p0, Lb/m/d/h;->c:Lb/m/d/w0$d;

    iput-object p3, p0, Lb/m/d/h;->d:Lb/m/d/w0$d;

    iput-boolean p4, p0, Lb/m/d/h;->e:Z

    iput-object p5, p0, Lb/m/d/h;->f:Lb/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lb/m/d/h;->c:Lb/m/d/w0$d;

    .line 1
    iget-object v0, v0, Lb/m/d/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v1, p0, Lb/m/d/h;->d:Lb/m/d/w0$d;

    .line 3
    iget-object v1, v1, Lb/m/d/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    iget-boolean v2, p0, Lb/m/d/h;->e:Z

    iget-object v3, p0, Lb/m/d/h;->f:Lb/f/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lb/m/d/p0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/a;Z)V

    return-void
.end method
