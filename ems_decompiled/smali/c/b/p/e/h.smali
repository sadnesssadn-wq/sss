.class public Lc/b/p/e/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private code:Ljava/lang/String;

.field private display:I

.field private note:Ljava/lang/String;

.field private partnerCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "partner_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/p/e/h;->partnerCode:Ljava/lang/String;

    iput-object p2, p0, Lc/b/p/e/h;->note:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lc/b/p/e/h;->display:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/h;->note:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/h;->partnerCode:Ljava/lang/String;

    return-object v0
.end method
