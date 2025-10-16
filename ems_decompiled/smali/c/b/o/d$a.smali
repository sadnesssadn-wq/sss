.class public Lc/b/o/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/o/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/o/d;


# direct methods
.method public constructor <init>(Lc/b/o/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/d$a;->a:Lc/b/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/o/d$a;->a:Lc/b/o/d;

    .line 1
    sget-object v1, Lc/b/o/d;->v:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc/b/o/c;

    invoke-direct {v1, v0}, Lc/b/o/c;-><init>(Lc/b/o/d;)V

    .line 3
    sget v0, Lc/b/s/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "active"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/merchants/update"

    invoke-static {v3, v0, v2, v1}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
