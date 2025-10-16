.class public abstract Lc/d/a/b/i/n/t1$c;
.super Lc/d/a/b/i/n/t1;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/e3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/n/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/d/a/b/i/n/t1$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lc/d/a/b/i/n/t1<",
        "TMessageType;TBuilderType;>;",
        "Lc/d/a/b/i/n/e3;"
    }
.end annotation


# instance fields
.field public zzc:Lc/d/a/b/i/n/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/l1<",
            "Lc/d/a/b/i/n/t1$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/i/n/t1;-><init>()V

    .line 1
    sget-object v0, Lc/d/a/b/i/n/l1;->d:Lc/d/a/b/i/n/l1;

    .line 2
    iput-object v0, p0, Lc/d/a/b/i/n/t1$c;->zzc:Lc/d/a/b/i/n/l1;

    return-void
.end method


# virtual methods
.method public final p()Lc/d/a/b/i/n/l1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/b/i/n/l1<",
            "Lc/d/a/b/i/n/t1$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/t1$c;->zzc:Lc/d/a/b/i/n/l1;

    .line 1
    iget-boolean v1, v0, Lc/d/a/b/i/n/l1;->b:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/i/n/l1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/l1;

    iput-object v0, p0, Lc/d/a/b/i/n/t1$c;->zzc:Lc/d/a/b/i/n/l1;

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/n/t1$c;->zzc:Lc/d/a/b/i/n/l1;

    return-object v0
.end method
