.class public abstract Lb/p/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/p/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lb/o/j;)Lb/p/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/o/j;",
            ":",
            "Lb/o/d0;",
            ">(TT;)",
            "Lb/p/a/a;"
        }
    .end annotation

    new-instance v0, Lb/p/a/b;

    move-object v1, p0

    check-cast v1, Lb/o/d0;

    invoke-interface {v1}, Lb/o/d0;->getViewModelStore()Lb/o/c0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/p/a/b;-><init>(Lb/o/j;Lb/o/c0;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
