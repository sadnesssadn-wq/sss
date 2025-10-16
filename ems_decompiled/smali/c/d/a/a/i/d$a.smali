.class public final Lc/d/a/a/i/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Lc/d/a/a/i/e/o;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lc/d/a/a/i/e/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/i/d$a;->a:Ljava/net/URL;

    iput-object p2, p0, Lc/d/a/a/i/d$a;->b:Lc/d/a/a/i/e/o;

    iput-object p3, p0, Lc/d/a/a/i/d$a;->c:Ljava/lang/String;

    return-void
.end method
