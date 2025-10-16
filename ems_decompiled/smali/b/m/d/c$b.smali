.class public Lb/m/d/c$b;
.super Lb/m/d/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lb/m/d/q;


# direct methods
.method public constructor <init>(Lb/m/d/w0$d;Lb/i/i/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/m/d/c$c;-><init>(Lb/m/d/w0$d;Lb/i/i/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/m/d/c$b;->d:Z

    iput-boolean p3, p0, Lb/m/d/c$b;->c:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Lb/m/d/q;
    .locals 4

    iget-boolean v0, p0, Lb/m/d/c$b;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lb/m/d/c$b;->e:Lb/m/d/q;

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lb/m/d/c$c;->a:Lb/m/d/w0$d;

    .line 2
    iget-object v1, v0, Lb/m/d/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Lb/m/d/w0$d;->a:Lb/m/d/w0$d$c;

    .line 4
    sget-object v2, Lb/m/d/w0$d$c;->d:Lb/m/d/w0$d$c;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lb/m/d/c$b;->c:Z

    invoke-static {p1, v1, v0, v2}, La/a/a/a/a;->S(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Lb/m/d/q;

    move-result-object p1

    iput-object p1, p0, Lb/m/d/c$b;->e:Lb/m/d/q;

    iput-boolean v3, p0, Lb/m/d/c$b;->d:Z

    return-object p1
.end method
