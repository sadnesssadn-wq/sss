.class public abstract Lb/o/z;
.super Lb/o/b0;
.source ""

# interfaces
.implements Lb/o/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/o/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Ljava/lang/Class;)Lb/o/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/o/w;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public create(Ljava/lang/Class;)Lb/o/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/o/w;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(String, Class<?>) must be called on implementaions of KeyedFactory"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
