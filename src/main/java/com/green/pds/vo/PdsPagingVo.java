package com.green.pds.vo;

public class PdsPagingVo {
	
	// 현재페이지, 시작페이지, 끝페이지, 게시글 총 갯수, 페이지당 글 갯수, 마지막페이지, SQL쿼리에 쓸 start, end
		private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
		public PdsPagingVo() {
		}
		public PdsPagingVo(int total, int nowPage, int cntPerPage) {
			setNowPage(nowPage);
	        setCntPerPage(cntPerPage);
	        setTotal(total);
	        calcLastPage(getTotal(), getCntPerPage());
	        calcStartEndPage(getNowPage(), getLastPage(), getCntPerPage());
	        calcStartEnd(getNowPage(), getCntPerPage());
		}
		// 제일 마지막 페이지 계산
		public void calcLastPage(int total, int cntPerPage) {
			setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
		}
		// 시작, 끝 페이지 계산
		public void calcStartEndPage(int nowPage, int lastPage, int cntPerPage) {
	        if (lastPage <= cntPerPage) {
	            setStartPage(1);
	            setEndPage(lastPage);
	        } else {
	            int startPage = nowPage - (cntPerPage / 2);
	            int endPage = nowPage + (cntPerPage / 2);

	            if (startPage < 1) {
	                startPage = 1;
	                endPage = cntPerPage;
	            } else if (endPage > lastPage) {
	                endPage = lastPage;
	                startPage = lastPage - cntPerPage + 1;
	            }

	            setStartPage(startPage);
	            setEndPage(endPage);
	        }
	    }
		// DB 쿼리에서 사용할 start, end값 계산
		public void calcStartEnd(int nowPage, int cntPerPage) {
			setEnd(nowPage * cntPerPage);
			setStart(getEnd() - cntPerPage + 1);
		}
		
		public int getNowPage() {
			return nowPage;
		}
		public void setNowPage(int nowPage) {
			this.nowPage = nowPage;
		}
		public int getStartPage() {
			return startPage;
		}
		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}
		public int getEndPage() {
			return endPage;
		}
		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
		public int getCntPerPage() {
			return cntPerPage;
		}
		public void setCntPerPage(int cntPerPage) {
			this.cntPerPage = cntPerPage;
		}
		public int getLastPage() {
			return lastPage;
		}
		public void setLastPage(int lastPage) {
			this.lastPage = lastPage;
		}
		public int getStart() {
			return start;
		}
		public void setStart(int start) {
			this.start = start;
		}
		public int getEnd() {
			return end;
		}
		public void setEnd(int end) {
			this.end = end;
		}	
		
		
		
		
		@Override
		public String toString() {
			return "PdsPagingVo [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total="
					+ total + ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end="
					+ end + ", getNowPage()=" + getNowPage() + ", getStartPage()="
					+ getStartPage() + ", getEndPage()=" + getEndPage() + ", getTotal()=" + getTotal()
					+ ", getCntPerPage()=" + getCntPerPage() + ", getLastPage()=" + getLastPage() + ", getStart()="
					+ getStart() + ", getEnd()=" + getEnd() + ", getClass()="
					+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
		}
		
	
	
}



