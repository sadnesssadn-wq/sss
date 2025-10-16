.class public La/a/a/b/b$b;
.super La/a/a/b/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:La/a/a/b/b;


# direct methods
.method public constructor <init>(La/a/a/b/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/b/b$b;->d:La/a/a/b/b;

    invoke-direct {p0}, La/a/a/b/a$a;-><init>()V

    return-void
.end method
