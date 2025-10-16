.class public final Lb/p/a/b$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/a/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Lb/o/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/o/w;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Lb/p/a/b$c;

    invoke-direct {p1}, Lb/p/a/b$c;-><init>()V

    return-object p1
.end method
