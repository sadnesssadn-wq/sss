.class public final Lc/d/a/b/e/m/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e/m/a$f;,
        Lc/d/a/b/e/m/a$b;,
        Lc/d/a/b/e/m/a$g;,
        Lc/d/a/b/e/m/a$c;,
        Lc/d/a/b/e/m/a$d;,
        Lc/d/a/b/e/m/a$a;,
        Lc/d/a/b/e/m/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/d/a/b/e/m/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final b:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lc/d/a/b/e/m/a$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lc/d/a/b/e/m/a$g;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lc/d/a/b/e/m/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lc/d/a/b/e/m/a$a<",
            "TC;TO;>;",
            "Lc/d/a/b/e/m/a$g<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lc/d/a/b/e/m/a;->a:Lc/d/a/b/e/m/a$a;

    iput-object p3, p0, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    return-void
.end method
