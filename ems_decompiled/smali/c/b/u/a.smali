.class public Lc/b/u/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/u/a$b;
    }
.end annotation


# static fields
.field public static final a:Lc/b/u/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/u/a;

    invoke-direct {v0}, Lc/b/u/a;-><init>()V

    sput-object v0, Lc/b/u/a;->a:Lc/b/u/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/b/u/a$b;)V
    .locals 3

    new-instance v0, Lc/b/u/a$a;

    invoke-direct {v0, p0, p1}, Lc/b/u/a$a;-><init>(Lc/b/u/a;Lc/b/u/a$b;)V

    .line 1
    sget p1, Lc/b/s/a;->d:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "datatype"

    const-string v2, "list"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "http://ws.ems.com.vn/api/v1/grab/service"

    invoke-static {v2, p1, v1, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
