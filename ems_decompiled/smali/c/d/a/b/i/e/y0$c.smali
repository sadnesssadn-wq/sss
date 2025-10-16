.class public abstract Lc/d/a/b/i/e/y0$c;
.super Lc/d/a/b/i/e/y0;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/f2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/e/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/d/a/b/i/e/y0$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lc/d/a/b/i/e/y0<",
        "TMessageType;TBuilderType;>;",
        "Lc/d/a/b/i/e/f2;"
    }
.end annotation


# instance fields
.field public zzjv:Lc/d/a/b/i/e/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/p0<",
            "Lc/d/a/b/i/e/y0$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/i/e/y0;-><init>()V

    .line 1
    sget-object v0, Lc/d/a/b/i/e/p0;->d:Lc/d/a/b/i/e/p0;

    .line 2
    iput-object v0, p0, Lc/d/a/b/i/e/y0$c;->zzjv:Lc/d/a/b/i/e/p0;

    return-void
.end method
