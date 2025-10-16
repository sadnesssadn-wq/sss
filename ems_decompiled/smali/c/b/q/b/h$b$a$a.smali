.class public Lc/b/q/b/h$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/h$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/q/d/e;

.field public final synthetic b:Lc/b/q/b/h$b$a;


# direct methods
.method public constructor <init>(Lc/b/q/b/h$b$a;Lc/b/q/d/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/h$b$a$a;->b:Lc/b/q/b/h$b$a;

    iput-object p2, p0, Lc/b/q/b/h$b$a$a;->a:Lc/b/q/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/q/b/h$b$a$a;->a:Lc/b/q/d/e;

    invoke-virtual {v0}, Lc/b/q/d/e;->E()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/q/b/h$b$a$a;->b:Lc/b/q/b/h$b$a;

    iget-object v1, v1, Lc/b/q/b/h$b$a;->d:Lc/b/q/b/h$b;

    iget-object v2, p0, Lc/b/q/b/h$b$a$a;->a:Lc/b/q/d/e;

    .line 1
    sget v3, Lc/b/q/b/h$b;->j:I

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lc/b/q/b/i;

    invoke-direct {v3, v1, v2}, Lc/b/q/b/i;-><init>(Lc/b/q/b/h$b;Lc/b/q/d/e;)V

    .line 3
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, "tracking_code"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    const-string v2, "http://ws.ems.com.vn/api/v1/be/orders/cancel"

    invoke-static {v2, v1, v0, v3}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
