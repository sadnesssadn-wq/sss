.class public final Lc/d/a/d/a/a/o;
.super Lc/d/a/d/a/a/d/i;
.source ""


# instance fields
.field public final c:Lc/d/a/d/a/a/d/m;

.field public final d:Lc/d/a/b/p/m;

.field public final synthetic e:Lc/d/a/d/a/a/p;

.field public final f:Ljava/lang/String;

.field public final synthetic g:Lc/d/a/d/a/a/p;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/p;Lc/d/a/b/p/m;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lc/d/a/d/a/a/o;->g:Lc/d/a/d/a/a/p;

    new-instance v0, Lc/d/a/d/a/a/d/m;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lc/d/a/d/a/a/d/m;-><init>(Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lc/d/a/d/a/a/o;->e:Lc/d/a/d/a/a/p;

    invoke-direct {p0}, Lc/d/a/d/a/a/d/i;-><init>()V

    iput-object v0, p0, Lc/d/a/d/a/a/o;->c:Lc/d/a/d/a/a/d/m;

    iput-object p2, p0, Lc/d/a/d/a/a/o;->d:Lc/d/a/b/p/m;

    .line 2
    iput-object p3, p0, Lc/d/a/d/a/a/o;->f:Ljava/lang/String;

    return-void
.end method
