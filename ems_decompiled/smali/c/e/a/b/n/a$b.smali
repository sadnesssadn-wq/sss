.class public Lc/e/a/b/n/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/e/a/b/m/e;

.field public final b:Lc/e/a/b/n/a$a;


# direct methods
.method public constructor <init>(Lc/e/a/b/m/e;Lc/e/a/b/n/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/n/a$b;->a:Lc/e/a/b/m/e;

    iput-object p2, p0, Lc/e/a/b/n/a$b;->b:Lc/e/a/b/n/a$a;

    return-void
.end method
