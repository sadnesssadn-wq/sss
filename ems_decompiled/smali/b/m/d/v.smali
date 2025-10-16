.class public abstract Lb/m/d/v;
.super Lb/m/d/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/m/d/s;"
    }
.end annotation


# instance fields
.field public final c:Landroid/app/Activity;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:Lb/m/d/y;


# direct methods
.method public constructor <init>(Lb/m/d/m;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Lb/m/d/s;-><init>()V

    new-instance v1, Lb/m/d/z;

    invoke-direct {v1}, Lb/m/d/z;-><init>()V

    iput-object v1, p0, Lb/m/d/v;->f:Lb/m/d/y;

    iput-object p1, p0, Lb/m/d/v;->c:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, La/a/a/a/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb/m/d/v;->d:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, La/a/a/a/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lb/m/d/v;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract f()Landroid/view/LayoutInflater;
.end method

.method public abstract g(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract h(Ljava/lang/String;)Z
.end method

.method public abstract i()V
.end method
