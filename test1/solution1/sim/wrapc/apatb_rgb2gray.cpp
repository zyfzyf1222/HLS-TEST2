// ==============================================================
// File generated on Wed Oct 28 15:09:44 +0800 2026
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "src_V_V"
#define AUTOTB_TVIN_src_V_V  "../tv/cdatafile/c.rgb2gray.autotvin_src_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_V  "../tv/stream_size/stream_size_in_src_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_V  "../tv/stream_size/stream_ingress_status_src_V_V.dat"
// wrapc file define: "dst_V_V"
#define AUTOTB_TVOUT_dst_V_V  "../tv/cdatafile/c.rgb2gray.autotvout_dst_V_V.dat"
#define AUTOTB_TVIN_dst_V_V  "../tv/cdatafile/c.rgb2gray.autotvin_dst_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_V  "../tv/stream_size/stream_size_out_dst_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_V  "../tv/stream_size/stream_egress_status_dst_V_V.dat"
// wrapc file define: "width_V"
#define AUTOTB_TVIN_width_V  "../tv/cdatafile/c.rgb2gray.autotvin_width_V.dat"
// wrapc file define: "height_V"
#define AUTOTB_TVIN_height_V  "../tv/cdatafile/c.rgb2gray.autotvin_height_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "dst_V_V"
#define AUTOTB_TVOUT_PC_dst_V_V  "../tv/rtldatafile/rtl.rgb2gray.autotvout_dst_V_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			src_V_V_depth = 0;
			dst_V_V_depth = 0;
			width_V_depth = 0;
			height_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{src_V_V " << src_V_V_depth << "}\n";
			total_list << "{dst_V_V " << dst_V_V_depth << "}\n";
			total_list << "{width_V " << width_V_depth << "}\n";
			total_list << "{height_V " << height_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int src_V_V_depth;
		int dst_V_V_depth;
		int width_V_depth;
		int height_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void rgb2gray (
hls::stream<ap_uint<24> > (&src),
hls::stream<ap_uint<8> > (&dst),
ap_uint<12> width,
ap_uint<12> height);

void AESL_WRAP_rgb2gray (
hls::stream<ap_uint<24> > (&src),
hls::stream<ap_uint<8> > (&dst),
ap_uint<12> width,
ap_uint<12> height)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "src"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_src_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_src_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_src_V_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				src.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_src_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "dst"
		std::vector<ap_uint<8> > aesl_tmp_3;
		int aesl_tmp_4;
		int aesl_tmp_5 = 0;

		// read output stream size: "dst"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_dst_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_dst_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_dst_V_V, AESL_token); // pop_size
			aesl_tmp_4 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_dst_V_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "dst_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_dst_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_dst_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_dst_V_V, AESL_token); // data

			std::vector<sc_bv<8> > dst_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'dst_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'dst_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					dst_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_dst_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_dst_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_uint<8> tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: dst_V_V
				{
					// bitslice(7, 0)
					// {
						// celement: dst.V.V(7, 0)
						// {
							sc_lv<8>* dst_V_V_lv0_0_0_1 = new sc_lv<8>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: dst.V.V(7, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_3[0]) != NULL) // check the null address if the c port is array or others
								{
									dst_V_V_lv0_0_0_1[hls_map_index].range(7, 0) = sc_bv<8>(dst_V_V_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: dst.V.V(7, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_3[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_3[0]
								// output_left_conversion : aesl_tmp_3[i_0]
								// output_type_conversion : (dst_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_3[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_3[i_0] = (dst_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "dst"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			dst.write(aesl_tmp_3[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "src_V_V"
		char* tvin_src_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_src_V_V);
		char* wrapc_stream_size_in_src_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_V);
		char* wrapc_stream_ingress_status_src_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_V);

		// "dst_V_V"
		char* tvin_dst_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_dst_V_V);
		char* tvout_dst_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_dst_V_V);
		char* wrapc_stream_size_out_dst_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_V);
		char* wrapc_stream_egress_status_dst_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_V);

		// "width_V"
		char* tvin_width_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_width_V);

		// "height_V"
		char* tvin_height_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_height_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "src"
		std::vector<ap_uint<24> > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!src.empty())
		{
			aesl_tmp_0.push_back(src.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "dst"
		std::vector<ap_uint<8> > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!dst.empty())
		{
			aesl_tmp_3.push_back(dst.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_width_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_width_V, tvin_width_V);

		sc_bv<12> width_V_tvin_wrapc_buffer;

		// RTL Name: width_V
		{
			// bitslice(11, 0)
			{
				// celement: width.V(11, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : width
						// sub_1st_elem          : 
						// ori_name_1st_elem     : width
						// regulate_c_name       : width_V
						// input_type_conversion : (width).to_string(2).c_str()
						if (&(width) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<12> width_V_tmp_mem;
							width_V_tmp_mem = (width).to_string(2).c_str();
							width_V_tvin_wrapc_buffer.range(11, 0) = width_V_tmp_mem.range(11, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_width_V, "%s\n", (width_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_width_V, tvin_width_V);
		}

		tcl_file.set_num(1, &tcl_file.width_V_depth);
		sprintf(tvin_width_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_width_V, tvin_width_V);

		// [[transaction]]
		sprintf(tvin_height_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_height_V, tvin_height_V);

		sc_bv<12> height_V_tvin_wrapc_buffer;

		// RTL Name: height_V
		{
			// bitslice(11, 0)
			{
				// celement: height.V(11, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : height
						// sub_1st_elem          : 
						// ori_name_1st_elem     : height
						// regulate_c_name       : height_V
						// input_type_conversion : (height).to_string(2).c_str()
						if (&(height) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<12> height_V_tmp_mem;
							height_V_tmp_mem = (height).to_string(2).c_str();
							height_V_tvin_wrapc_buffer.range(11, 0) = height_V_tmp_mem.range(11, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_height_V, "%s\n", (height_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_height_V, tvin_height_V);
		}

		tcl_file.set_num(1, &tcl_file.height_V_depth);
		sprintf(tvin_height_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_height_V, tvin_height_V);

		// push back input stream: "src"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			src.write(aesl_tmp_0[i]);
		}

		// push back input stream: "dst"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			dst.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		rgb2gray(src, dst, width, height);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "src"
		int aesl_tmp_2 = src.size();

		// pop output stream: "dst"
		int aesl_tmp_5 = aesl_tmp_4;
		aesl_tmp_4 = 0;
     aesl_tmp_3.clear();
		while (!dst.empty())
		{
			aesl_tmp_3.push_back(dst.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_src_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_src_V_V, tvin_src_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, tvin_src_V_V);

		sc_bv<24>* src_V_V_tvin_wrapc_buffer = new sc_bv<24>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: src_V_V
		{
			// bitslice(23, 0)
			{
				int hls_map_index = 0;
				// celement: src.V.V(23, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_0[0]
						// regulate_c_name       : src_V_V
						// input_type_conversion : (aesl_tmp_0[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<24> src_V_V_tmp_mem;
							src_V_V_tmp_mem = (aesl_tmp_0[i_0]).to_string(2).c_str();
							src_V_V_tvin_wrapc_buffer[hls_map_index].range(23, 0) = src_V_V_tmp_mem.range(23, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_src_V_V, "%s\n", (src_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_src_V_V, tvin_src_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_src_V_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, stream_ingress_size_src_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_src_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, stream_ingress_size_src_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_src_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, stream_ingress_size_src_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.src_V_V_depth);
		sprintf(tvin_src_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_src_V_V, tvin_src_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_V, tvin_src_V_V);

		// release memory allocation
		delete [] src_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_src_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_V, wrapc_stream_size_in_src_V_V);
		sprintf(wrapc_stream_size_in_src_V_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_V, wrapc_stream_size_in_src_V_V);
		sprintf(wrapc_stream_size_in_src_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_V, wrapc_stream_size_in_src_V_V);

		// [[transaction]]
		sprintf(tvout_dst_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_dst_V_V, tvout_dst_V_V);

		sc_bv<8>* dst_V_V_tvout_wrapc_buffer = new sc_bv<8>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: dst_V_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: dst.V.V(7, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_3[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_3[0]
						// regulate_c_name       : dst_V_V
						// input_type_conversion : (aesl_tmp_3[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_3[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> dst_V_V_tmp_mem;
							dst_V_V_tmp_mem = (aesl_tmp_3[i_0]).to_string(2).c_str();
							dst_V_V_tvout_wrapc_buffer[hls_map_index].range(7, 0) = dst_V_V_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_dst_V_V, "%s\n", (dst_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_dst_V_V, tvout_dst_V_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.dst_V_V_depth);
		sprintf(tvout_dst_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_dst_V_V, tvout_dst_V_V);

		// release memory allocation
		delete [] dst_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_dst_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_V, wrapc_stream_size_out_dst_V_V);
		sprintf(wrapc_stream_size_out_dst_V_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_V, wrapc_stream_size_out_dst_V_V);
		sprintf(wrapc_stream_size_out_dst_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_V, wrapc_stream_size_out_dst_V_V);

		// push back output stream: "dst"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			dst.write(aesl_tmp_3[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "src_V_V"
		delete [] tvin_src_V_V;
		delete [] wrapc_stream_size_in_src_V_V;
		// release memory allocation: "dst_V_V"
		delete [] tvout_dst_V_V;
		delete [] tvin_dst_V_V;
		delete [] wrapc_stream_size_out_dst_V_V;
		// release memory allocation: "width_V"
		delete [] tvin_width_V;
		// release memory allocation: "height_V"
		delete [] tvin_height_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

