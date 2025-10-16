.class public Lb/m/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/c;->b(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lb/m/d/w0$d;

.field public final synthetic e:Lb/m/d/c;


# direct methods
.method public constructor <init>(Lb/m/d/c;Ljava/util/List;Lb/m/d/w0$d;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/c$a;->e:Lb/m/d/c;

    iput-object p2, p0, Lb/m/d/c$a;->c:Ljava/util/List;

    iput-object p3, p0, Lb/m/d/c$a;->d:Lb/m/d/w0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/m/d/c$a;->c:Ljava/util/List;

    iget-object v1, p0, Lb/m/d/c$a;->d:Lb/m/d/w0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/m/d/c$a;->c:Ljava/util/List;

    iget-object v1, p0, Lb/m/d/c$a;->d:Lb/m/d/w0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/m/d/c$a;->e:Lb/m/d/c;

    iget-object v1, p0, Lb/m/d/c$a;->d:Lb/m/d/w0$d;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v1, Lb/m/d/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    iget-object v1, v1, Lb/m/d/w0$d;->a:Lb/m/d/w0$d$c;

    .line 5
    invoke-virtual {v1, v0}, Lb/m/d/w0$d$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
